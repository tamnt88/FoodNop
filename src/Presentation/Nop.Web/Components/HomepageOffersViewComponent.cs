using Microsoft.AspNetCore.Mvc;
using Nop.Services.Catalog;
using Nop.Services.Security;
using Nop.Services.Stores;
using Nop.Web.Framework.Components;

namespace Nop.Web.Components;
 
public partial class HomepageOffersViewComponent : NopViewComponent
{
    protected readonly IAclService _aclService;
    protected readonly IProductService _productService;
    protected readonly IStoreMappingService _storeMappingService;

    public HomepageOffersViewComponent(IAclService aclService,
        IProductService productService,
        IStoreMappingService storeMappingService)
    {
        _aclService = aclService;

        _productService = productService;
        _storeMappingService = storeMappingService;
    }

    public async Task<IViewComponentResult> InvokeAsync(int? productThumbPictureSize)
    {

        return View();
    }
}