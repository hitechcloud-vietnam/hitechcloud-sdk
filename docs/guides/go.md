# Go SDK Guide

## Installation

```bash
go get github.com/hitechcloud-vietnam/hitechcloud-sdk/sdk/go
```

## Initialization

```go
package main

import (
    "github.com/hitechcloud-vietnam/hitechcloud-sdk/sdk/go"
)

func main() {
    client := hitechcloud.NewClient("your-api-key")
}
```

## Basic Usage

```go
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
```

## Testing

```go
package hitechcloud

import "testing"

func TestNewClient(t *testing.T) {
    client := NewClient("test-key")
    if client == nil {
        t.Fatal("client should not be nil")
    }
}
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `HITECHCLOUD_API_KEY` | Your API key |
| `HITECHCLOUD_BASE_URL` | Custom base URL (default: `https://docs.hitechcloud.vn`) |

## More Examples

See the [`examples/go/`](../../examples/go/) directory for complete examples.
