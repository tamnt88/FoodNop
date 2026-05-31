using System.Security.Claims;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Facebook;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using Nop.Core;
using Nop.Core.Http;
using Nop.Plugin.ExternalAuth.Facebook.Infrastructure;
using Nop.Plugin.ExternalAuth.Facebook.Models;
using Nop.Services.Authentication.External;
using Nop.Services.Configuration;
using Nop.Services.Localization;
using Nop.Services.Messages;
using Nop.Services.Security;
using Nop.Web.Framework;
using Nop.Web.Framework.Controllers;
using Nop.Web.Framework.Mvc.Filters;

namespace Nop.Plugin.ExternalAuth.Facebook.Controllers;

[AutoValidateAntiforgeryToken]
public class FacebookAuthenticationController : BasePluginController
{
    #region Fields

    protected readonly FacebookExternalAuthSettings _facebookExternalAuthSettings;
    protected readonly IAuthenticationPluginManager _authenticationPluginManager;
    protected readonly IExternalAuthenticationService _externalAuthenticationService;
    protected readonly ILocalizationService _localizationService;
    protected readonly INotificationService _notificationService;
    protected readonly IOptionsMonitorCache<FacebookOptions> _optionsCache;
    protected readonly IPermissionService _permissionService;
    protected readonly ISettingService _settingService;
    protected readonly IStoreContext _storeContext;
    protected readonly IWorkContext _workContext;

    #endregion

    #region Ctor

    public FacebookAuthenticationController(FacebookExternalAuthSettings facebookExternalAuthSettings,
        IAuthenticationPluginManager authenticationPluginManager,
        IExternalAuthenticationService externalAuthenticationService,
        ILocalizationService localizationService,
        INotificationService notificationService,
        IOptionsMonitorCache<FacebookOptions> optionsCache,
        IPermissionService permissionService,
        ISettingService settingService,
        IStoreContext storeContext,
        IWorkContext workContext)
    {
        _facebookExternalAuthSettings = facebookExternalAuthSettings;
        _authenticationPluginManager = authenticationPluginManager;
        _externalAuthenticationService = externalAuthenticationService;
        _localizationService = localizationService;
        _notificationService = notificationService;
        _optionsCache = optionsCache;
        _permissionService = permissionService;
        _settingService = settingService;
        _storeContext = storeContext;
        _workContext = workContext;
    }

    #endregion

    #region Methods

    [AuthorizeAdmin]
    [Area(AreaNames.ADMIN)]
    [CheckPermission(StandardPermission.Configuration.MANAGE_EXTERNAL_AUTHENTICATION_METHODS)]
    public IActionResult Configure()
    {
        var model = new ConfigurationModel
        {
            ClientId = _facebookExternalAuthSettings.ClientKeyIdentifier,
            ClientSecret = _facebookExternalAuthSettings.ClientSecret
        };

        return View("~/Plugins/ExternalAuth.Facebook/Views/Configure.cshtml", model);
    }

    [HttpPost]
    [AuthorizeAdmin]
    [Area(AreaNames.ADMIN)]
    [CheckPermission(StandardPermission.Configuration.MANAGE_EXTERNAL_AUTHENTICATION_METHODS)]
    public async Task<IActionResult> Configure(ConfigurationModel model)
    {
        if (!ModelState.IsValid)
            return Configure();

        //save settings
        _facebookExternalAuthSettings.ClientKeyIdentifier = model.ClientId;
        _facebookExternalAuthSettings.ClientSecret = model.ClientSecret;
        await _settingService.SaveSettingAsync(_facebookExternalAuthSettings);

        //clear Facebook authentication options cache
        _optionsCache.TryRemove(FacebookDefaults.AuthenticationScheme);

        _notificationService.SuccessNotification(await _localizationService.GetResourceAsync("Admin.Plugins.Saved"));

        return Configure();
    }

    public async Task<IActionResult> Login(string returnUrl)
    {
        var store = await _storeContext.GetCurrentStoreAsync();
        var methodIsAvailable = await _authenticationPluginManager
            .IsPluginActiveAsync(FacebookAuthenticationDefaults.SystemName, await _workContext.GetCurrentCustomerAsync(), store.Id);
        if (!methodIsAvailable)
            throw new NopException("Facebook authentication module cannot be loaded");

        if (string.IsNullOrEmpty(_facebookExternalAuthSettings.ClientKeyIdentifier) ||
            string.IsNullOrEmpty(_facebookExternalAuthSettings.ClientSecret))
        {
            throw new NopException("Facebook authentication module not configured");
        }

        //configure login callback action
        var authenticationProperties = new AuthenticationProperties
        {
            RedirectUri = Url.Action("LoginCallback", "FacebookAuthentication", new { returnUrl })
        };
        authenticationProperties.SetString(FacebookAuthenticationDefaults.ErrorCallback, Url.RouteUrl(NopRouteNames.General.LOGIN, new { returnUrl }));
        authenticationProperties.SetString(FacebookAuthenticationDefaults.ReturnUrl, returnUrl ?? string.Empty);

        return Challenge(authenticationProperties, FacebookDefaults.AuthenticationScheme);
    }

    public async Task<IActionResult> LoginCallback(string returnUrl)
    {
        //authenticate Facebook user
        var authenticateResult = await HttpContext.AuthenticateAsync(FacebookDefaults.AuthenticationScheme);
        if (!authenticateResult.Succeeded || !authenticateResult.Principal.Claims.Any())
        {
            var failureMessage = authenticateResult.Failure?.Message;
            var errorMessage = string.IsNullOrEmpty(failureMessage)
                ? "Facebook authentication failed. Please verify your Facebook app redirect URI (https://your-store/signin-facebook) and App ID/Secret settings."
                : $"Facebook authentication failed: {failureMessage}";

            await FacebookAuthenticationHelper.StoreAuthenticationErrorAsync(HttpContext, errorMessage);

            return RedirectToRoute(NopRouteNames.General.LOGIN, !string.IsNullOrEmpty(returnUrl) ? new { ReturnUrl = returnUrl } : null);
        }

        if (string.IsNullOrEmpty(returnUrl))
            returnUrl = authenticateResult.Properties?.GetString(FacebookAuthenticationDefaults.ReturnUrl);

        if (string.IsNullOrEmpty(returnUrl))
            returnUrl = null;

        var email = await FacebookAuthenticationHelper.GetEmailAsync(HttpContext, authenticateResult.Principal);
        if (string.IsNullOrEmpty(email))
        {
            await FacebookAuthenticationHelper.StoreAuthenticationErrorAsync(HttpContext,
                "Facebook did not provide an email address. Ensure your Facebook app requests the email permission, " +
                "your Facebook account has a verified email, and you approved email access when logging in.");

            return RedirectToRoute(NopRouteNames.General.LOGIN, !string.IsNullOrEmpty(returnUrl) ? new { ReturnUrl = returnUrl } : null);
        }

        //create external authentication parameters
        var authenticationParameters = new ExternalAuthenticationParameters
        {
            ProviderSystemName = FacebookAuthenticationDefaults.SystemName,
            AccessToken = await HttpContext.GetTokenAsync(FacebookDefaults.AuthenticationScheme, "access_token"),
            Email = email,
            ExternalIdentifier = authenticateResult.Principal.FindFirst(claim => claim.Type == ClaimTypes.NameIdentifier)?.Value,
            ExternalDisplayIdentifier = authenticateResult.Principal.FindFirst(claim => claim.Type == ClaimTypes.Name)?.Value,
            Claims = authenticateResult.Principal.Claims.Select(claim => new ExternalAuthenticationClaim(claim.Type, claim.Value)).ToList()
        };

        //authenticate Nop user
        return await _externalAuthenticationService.AuthenticateAsync(authenticationParameters, returnUrl);
    }

    public async Task<IActionResult> DataDeletionStatusCheck(int earId)
    {
        var externalAuthenticationRecord = await _externalAuthenticationService.GetExternalAuthenticationRecordByIdAsync(earId);
        if (externalAuthenticationRecord is not null)
            _notificationService.WarningNotification(await _localizationService.GetResourceAsync("Plugins.ExternalAuth.Facebook.AuthenticationDataExist"));
        else
            _notificationService.SuccessNotification(await _localizationService.GetResourceAsync("Plugins.ExternalAuth.Facebook.AuthenticationDataDeletedSuccessfully"));

        return RedirectToRoute(NopRouteNames.General.CUSTOMER_INFO);
    }

    #endregion
}