# Nodejs Examples

## Basic Usage

```nodejs
// List all services
const services = await client.services.listServices();
console.log(services.data);

// Get a specific service
const service = await client.services.getService({ id: 123 });
console.log(service);

// Power operations
await client.services.startService({ id: 123 });
await client.services.stopService({ id: 123 });
await client.services.rebootService({ id: 123 });
```

## Running

```bash
export HITECHCLOUD_API_KEY=your-api-key
node basic_usage.js
```

## More Examples

- `basic_usage.js` — List, get, and manage services
- `error_handling.js` — Handle API errors gracefully
- `pagination.js` — Paginate through results
