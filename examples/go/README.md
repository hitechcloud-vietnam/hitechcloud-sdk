# Go Examples

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

## Running

```bash
export HITECHCLOUD_API_KEY=your-api-key
go run basic_usage.go
```

## More Examples

- `basic_usage.go` — List, get, and manage services
- `error_handling.go` — Handle API errors gracefully
- `pagination.go` — Paginate through results
