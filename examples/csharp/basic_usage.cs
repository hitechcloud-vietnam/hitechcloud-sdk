#!/usr/bin/env csharp
/**
 * Basic usage example for HiTechCloud Csharp SDK
 * 
 * Set your API key:
 *   export HITECHCLOUD_API_KEY=your-api-key
 */
using HiTechCloud;

var client = new HiTechCloudClient("your-api-key");

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
