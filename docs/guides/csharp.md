# Csharp SDK Guide

## Installation

```csharp
dotnet add package HiTechCloud.SDK
```

## Initialization

```csharp
using HiTechCloud;

var client = new HiTechCloudClient("your-api-key");
```

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

## Testing

```csharp
using Xunit;
using HiTechCloud;

public class HiTechCloudTest {
    [Fact]
    public void TestClientInit() {
        var client = new HiTechCloudClient("test-key");
        Assert.NotNull(client);
    }
}
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `HITECHCLOUD_API_KEY` | Your API key |
| `HITECHCLOUD_BASE_URL` | Custom base URL (default: `https://docs.hitechcloud.vn`) |

## More Examples

See the [`examples/csharp/`](../../examples/csharp/) directory for complete examples.
