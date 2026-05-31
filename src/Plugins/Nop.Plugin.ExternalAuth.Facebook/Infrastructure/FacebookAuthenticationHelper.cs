using System.Net.Http;
using System.Security.Claims;
using System.Text.Json;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Facebook;
using Microsoft.AspNetCore.Http;
using Nop.Core.Http.Extensions;
using Nop.Services.Authentication;

namespace Nop.Plugin.ExternalAuth.Facebook.Infrastructure;

/// <summary>
/// Facebook authentication helper
/// </summary>
public static class FacebookAuthenticationHelper
{
    /// <summary>
    /// Store external authentication error in session for display on the login page
    /// </summary>
    /// <param name="httpContext">HTTP context</param>
    /// <param name="error">Error message</param>
    /// <returns>A task that represents the asynchronous operation</returns>
    public static async Task StoreAuthenticationErrorAsync(HttpContext httpContext, string error)
    {
        if (httpContext?.Session == null || string.IsNullOrEmpty(error))
            return;

        var existingErrors = (await httpContext.Session
            .GetAsync<IList<string>>(NopAuthenticationDefaults.ExternalAuthenticationErrorsSessionKey))?.ToList()
            ?? new List<string>();

        existingErrors.Add(error);

        await httpContext.Session.SetAsync(NopAuthenticationDefaults.ExternalAuthenticationErrorsSessionKey, existingErrors);
    }

    /// <summary>
    /// Resolve customer email from Facebook claims or Graph API
    /// </summary>
    /// <param name="httpContext">HTTP context</param>
    /// <param name="principal">Authenticated Facebook principal</param>
    /// <returns>Email address if available</returns>
    public static async Task<string> GetEmailAsync(HttpContext httpContext, ClaimsPrincipal principal)
    {
        var email = principal.FindFirst(claim => claim.Type == ClaimTypes.Email)?.Value
            ?? principal.FindFirst("email")?.Value;

        if (!string.IsNullOrEmpty(email))
            return email;

        var accessToken = await httpContext.GetTokenAsync(FacebookDefaults.AuthenticationScheme, "access_token");
        if (string.IsNullOrEmpty(accessToken))
            return null;

        try
        {
            using var httpClient = new HttpClient();
            var response = await httpClient.GetStringAsync(
                $"https://graph.facebook.com/me?fields=email&access_token={Uri.EscapeDataString(accessToken)}");

            using var document = JsonDocument.Parse(response);
            if (document.RootElement.TryGetProperty("email", out var emailElement))
                return emailElement.GetString();
        }
        catch
        {
            //ignored
        }

        return null;
    }
}
