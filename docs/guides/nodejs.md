# Nodejs SDK Guide

## Installation

```bash
npm install @hitechcloud/sdk
```

## Initialization

```nodejs
const HiTechCloud = require('@hitechcloud/sdk');

const client = new HiTechCloud({ apiKey: 'your-api-key' });
```

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

## Testing

```nodejs
const HiTechCloud = require('@hitechcloud/sdk');

describe('HiTechCloud SDK', () => {
    let client;
    beforeAll(() => {
        client = new HiTechCloud({ apiKey: 'test-key' });
    });

    test('should initialize client', () => {
        expect(client).toBeDefined();
    });
});
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `HITECHCLOUD_API_KEY` | Your API key |
| `HITECHCLOUD_BASE_URL` | Custom base URL (default: `https://docs.hitechcloud.vn`) |

## More Examples

See the [`examples/nodejs/`](../../examples/nodejs/) directory for complete examples.
