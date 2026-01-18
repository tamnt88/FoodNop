using Microsoft.AspNetCore.Mvc;
using Nop.Services.Catalog;
using Nop.Services.Security;
using Nop.Services.Stores;
using Nop.Web.Factories;
using Nop.Web.Framework.Components;

namespace Nop.Web.Components;

public class HomepageSaleBannersViewComponent : NopViewComponent
{
    protected readonly IAclService _aclService;
    protected readonly IProductModelFactory _productModelFactory;
    protected readonly IProductService _productService;
    protected readonly IStoreMappingService _storeMappingService;

    public HomepageSaleBannersViewComponent(IAclService aclService,
        IProductModelFactory productModelFactory,
        IProductService productService,
        IStoreMappingService storeMappingService)
    {
        _aclService = aclService;
        _productModelFactory = productModelFactory;
        _productService = productService;
        _storeMappingService = storeMappingService;
    }

    public async Task<IViewComponentResult> InvokeAsync()
    { 
        return View();
    }
}
