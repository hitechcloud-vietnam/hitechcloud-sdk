# Java Examples

## Basic Usage

```java
// List all services
var services = client.services().listServices();
System.out.println(services);

// Get a specific service
var service = client.services().getService(123);
System.out.println(service);

// Power operations
client.services().startService(123);
client.services().stopService(123);
client.services().rebootService(123);
```

## Running

```bash
export HITECHCLOUD_API_KEY=your-api-key
java BasicUsage
```

## More Examples

- `basic_usage.java` — List, get, and manage services
- `error_handling.java` — Handle API errors gracefully
- `pagination.java` — Paginate through results
