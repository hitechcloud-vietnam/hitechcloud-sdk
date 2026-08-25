#!/usr/bin/env go
/**
 * Basic usage example for HiTechCloud Go SDK
 * 
 * Set your API key:
 *   export HITECHCLOUD_API_KEY=your-api-key
 */
package main

import (
    "github.com/hitechcloud-vietnam/hitechcloud-sdk/sdk/go"
)

func main() {
    client := hitechcloud.NewClient("your-api-key")
}

// List all services
services, err := client.Services.ListServices(nil)
if err != nil {
    log.Fatal(err)
}
fmt.Println(services)

// Get a specific service
service, err := client.Services.GetService(123)
if err != nil {
    log.Fatal(err)
}
fmt.Println(service)

// Power operations
client.Services.StartService(123)
client.Services.StopService(123)
client.Services.RebootService(123)
