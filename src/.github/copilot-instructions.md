# NopCommerce AI Coding Instructions

## Architecture Overview

**NopCommerce** is a modular e-commerce platform with three primary layers:

- **Libraries**: `Nop.Core` (domain models, base classes), `Nop.Data` (EF Core), `Nop.Services` (business logic)
- **Presentation**: `Nop.Web` (MVC front-end), `Nop.Web.Framework` (shared infrastructure)
- **Plugins**: Isolated packages under `Plugins/` (payment, shipping, tax, widgets, auth)

All services and entities follow a **partial class pattern** for extensibility.

## Critical Patterns & Conventions

### Service Architecture
- **Service Layer Pattern**: All business logic lives in `Nop.Services/<Feature>/` with interface-first design
- **Async-first**: All I/O-bound operations use `async Task` (never `Task.Run()`)
- **Result Pattern**: Use `BaseNopResult` for operation results with error lists (see `BaseNopResult.cs`)
- **Dependency Injection**: Constructor injection via `IServiceCollection` (configured in `NopStartup.cs`)

Example service structure:
```csharp
public partial class MyService : IMyService
{
    protected readonly IRepository<MyEntity> _repository;
    protected readonly IEventPublisher _eventPublisher;
    
    public MyService(IRepository<MyEntity> repository, IEventPublisher eventPublisher)
    {
        _repository = repository;
        _eventPublisher = eventPublisher;
    }
    
    public virtual async Task<MyEntity> GetByIdAsync(int id) => 
        await _repository.GetByIdAsync(id);
}
```

### Entity & Data Access
- All entities inherit from `BaseEntity` (has `Id: int` property only)
- Use generic `IRepository<TEntity>` for data access (not Entity Framework directly)
- Entities placed in `Nop.Core.Domain/<Feature>/`
- Entity queries leverage `IQueryable` extension methods for filtering/paging

### Event-Driven Architecture
- Services publish events via `IEventPublisher.PublishAsync(event)` after significant operations
- Event handlers implement `IConsumer<TEvent>` in same or other services
- Example: `CustomerPasswordChangedEvent` published after password update
- Located in `Nop.Core.Domain/<Feature>/` folders

### Plugin Architecture
- **Plugin Structure**: Each plugin has `plugin.json` metadata (SystemName, Version, Group, FileName)
- **Plugin Interface**: All plugins implement `IPlugin` from `Nop.Services.Plugins`
- **Specialized Managers**: Type-specific plugin managers handle activation (e.g., `IPaymentPluginManager`, `IShippingPluginManager`)
- **Plugin Lifecycle**: `InstallAsync()`, `UninstallAsync()`, `UpdateAsync()` methods called by `PluginService`
- **Example Plugin**: [Nop.Plugin.Payments.Manual](Plugins/Nop.Plugin.Payments.Manual/) - implements `IPaymentMethod` interface
- **Installation/Uninstallation**: Managed by `PluginsInfo` and `PluginService` - handles database migrations and activation state

### Database Migrations
- Use **FluentMigrator** for schema changes
- Migrations in plugin assemblies discovered automatically via reflection
- Applied during plugin install/uninstall via `MigrationManager`

### Web Framework Features
- **Factory Pattern**: Model factories (`IXxxModelFactory`) transform domain entities → view models
- **Localization**: Use `ILocalizationService.GetResourceAsync(key)` for UI text
- **Caching**: Use `IStaticCacheManager` or `IShortTermCacheManager` (per-request)
- **Settings**: Store configuration via `ISettingService` → persisted in database

## Build & Deployment

**Build Command** (from root `src/` directory):
```powershell
dotnet build NopCommerce.sln
```

**Publish Web Project**:
```powershell
dotnet publish Presentation/Nop.Web/Nop.Web.csproj -c Release
```

**Test Execution**:
- Test infrastructure in `Tests/Nop.Tests/BaseNopTest.cs` - provides DI container with all services registered
- Run: `dotnet test Tests/Nop.Tests/Nop.Tests.csproj`

## Common Tasks

### Adding a Service Method
1. Add method signature to interface in `Nop.Services/<Feature>/I<Service>.cs`
2. Implement in concrete class with `public virtual async Task` pattern
3. Inject required dependencies via constructor
4. Use `await _repository.` or other injected services
5. Publish events after state changes via `_eventPublisher.PublishAsync()`

### Creating a Plugin
1. Create folder under `Plugins/Nop.Plugin.<Category>.<Name>/`
2. Add `plugin.json` with metadata and `Nop.Plugin.<Category>.<Name>.csproj`
3. Create main class implementing `BasePlugin` + required interface (e.g., `IPaymentMethod`)
4. Override `InstallAsync()` and `UninstallAsync()` for setup/cleanup
5. Add `IConfigurable` implementation for settings UI if needed

### Extending an Entity
- Use partial classes: create `Domain/<Feature>/PartialClassName.cs`
- Add new properties/methods without modifying original
- Update view models in `Presentation/Nop.Web/Areas/Admin/Models/`

## Code Style & Rules

- **Namespace**: Match folder structure exactly (`Nop.Services.Catalog.Products`)
- **Naming**: Interfaces start with `I` (e.g., `IProductService`), concrete classes omit prefix
- **Access Modifiers**: Declare `#region` sections (Fields, Ctor, Methods, Properties, Utilities)
- **Virtual Methods**: Service methods marked `virtual` for extension/testing
- **Null Handling**: Use `ArgumentNullException.ThrowIfNull()` for parameter validation
- **Target Framework**: `net9.0` (set in `Directory.Build.props`)
- **Implicit Usings**: Enabled globally - standard `using` directives implicit

## Key Files Reference

- [NopStartup.cs](Presentation/Nop.Web.Framework/Infrastructure/NopStartup.cs) - DI configuration & middleware
- [PluginService.cs](Libraries/Nop.Services/Plugins/PluginService.cs) - Plugin lifecycle management
- [BaseNopTest.cs](Tests/Nop.Tests/BaseNopTest.cs) - Test DI setup template
- [BaseEntity.cs](Libraries/Nop.Core/BaseEntity.cs) - Entity base class

## Design Decisions

- **Why Partial Classes?** Enable extension without source modification - critical for plugin ecosystem
- **Why Generic Services?** Reduce code duplication for CRUD operations across all entity types
- **Why Event-Driven?** Decouple plugins/features - plugins subscribe to core events without direct dependencies
- **Why Plugin Managers?** Type-specific managers (Payment, Shipping) enforce interface contracts per plugin category
