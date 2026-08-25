# Csharp Examples

## Basic Usage

```csharp
// List all services
var services = await client.Services.ListServicesAsync();
foreach (var svc in services.Data)
{
    Console.WriteLine($"{svc.Id}: {svc.Name}");
}

// Get a specific service
var service = await client.Services.GetServiceAsync(123);
Console.WriteLine(service);

// Power operations
await client.Services.StartServiceAsync(123);
await client.Services.StopServiceAsync(123);
await client.Services.RebootServiceAsync(123);
```

## Running

```bash
export HITECHCLOUD_API_KEY=your-api-key
dotnet run
```

## More Examples

- `basic_usage.cs` — List, get, and manage services
- `error_handling.cs` — Handle API errors gracefully
- `pagination.cs` — Paginate through results
