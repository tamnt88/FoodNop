using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Facebook;
using Microsoft.AspNetCore.Authentication.OAuth;
using Microsoft.Extensions.DependencyInjection;
using Nop.Core.Infrastructure;
using Nop.Services.Authentication.External;

namespace Nop.Plugin.ExternalAuth.Facebook.Infrastructure;

/// <summary>
/// Represents registrar of Facebook authentication service
/// </summary>
public class FacebookAuthenticationRegistrar : IExternalAuthenticationRegistrar
{
    /// <summary>
    /// Configure
    /// </summary>
    /// <param name="builder">Authentication builder</param>
    public void Configure(AuthenticationBuilder builder)
    {
        builder.AddFacebook(FacebookDefaults.AuthenticationScheme, options =>
        {
            //set credentials
            var settings = EngineContext.Current.Resolve<FacebookExternalAuthSettings>();

            options.AppId = string.IsNullOrEmpty(settings?.ClientKeyIdentifier) ? nameof(options.AppId) : settings.ClientKeyIdentifier;
            options.AppSecret = string.IsNullOrEmpty(settings?.ClientSecret) ? nameof(options.AppSecret) : settings.ClientSecret;

            //store access and refresh tokens for the further usage
            options.SaveTokens = true;

            //request email (required by nopCommerce for registration/login)
            options.Scope.Add("public_profile");
            options.Scope.Add("email");
            options.Fields.Add("id");
            options.Fields.Add("name");
            options.Fields.Add("email");
            options.Fields.Add("first_name");
            options.Fields.Add("last_name");

            //set custom events handlers
            options.Events = new OAuthEvents
            {
                //re-ask for declined permissions (e.g. email) on each login attempt
                OnRedirectToAuthorizationEndpoint = context =>
                {
                    var redirectUri = context.RedirectUri;
                    if (!redirectUri.Contains("auth_type=", StringComparison.OrdinalIgnoreCase))
                        redirectUri += "&auth_type=rerequest";

                    context.Response.Redirect(redirectUri);

                    return Task.CompletedTask;
                },
                //in case of error, redirect the user to the specified URL
                OnRemoteFailure = async context =>
                {
                    context.HandleResponse();

                    var failureMessage = context.Failure?.Message;
                    await FacebookAuthenticationHelper.StoreAuthenticationErrorAsync(context.HttpContext,
                        string.IsNullOrEmpty(failureMessage)
                            ? "Facebook authentication was cancelled or rejected."
                            : $"Facebook authentication failed: {failureMessage}");

                    var errorUrl = context.Properties.GetString(FacebookAuthenticationDefaults.ErrorCallback);
                    context.Response.Redirect(errorUrl);
                }
            };
        });
    }
}