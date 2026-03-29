namespace Nop.Plugin.Widgets.Swiper.Domain;

/// <summary>
/// Represents a slider item in the settings
/// </summary>
public class Slide
{
    #region Properties

    /// <summary>
    /// Picture identifier
    /// </summary>
    public int PictureId { get; set; }

    /// <summary>
    /// Title attribute for image
    /// </summary>
    public string TitleText { get; set; }

    /// <summary>
    /// Link URL 
    /// </summary>
    public string LinkUrl { get; set; }

    /// <summary>
    /// Image alternate text
    /// </summary>
    public string AltText { get; set; }

    /// <summary>
    /// Hero subtitle (small line above the main heading)
    /// </summary>
    public string Subtitle { get; set; }

    /// <summary>
    /// Hero main heading (HTML allowed; rendered raw)
    /// </summary>
    public string Heading { get; set; }

    /// <summary>
    /// Hero description paragraph
    /// </summary>
    public string DescriptionBody { get; set; }

    /// <summary>
    /// Call-to-action button label
    /// </summary>
    public string ButtonText { get; set; }

    #endregion
}
