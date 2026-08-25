# Python SDK Guide

## Installation

```bash
pip install hitechcloud
```

## Initialization

```python
from hitechcloud import HiTechCloud

client = HiTechCloud(api_key="your-api-key")
```

## Basic Usage

```python
# List all services
services = client.services.list_services()
for svc in services.get('data', []):
    print(f"{svc['id']}: {svc['name']}")

# Get a specific service
service = client.services.get_service(id=123)
print(service)

# Power operations
client.services.start_service(id=123)
client.services.stop_service(id=123)
client.services.reboot_service(id=123)
```

## Testing

```python
import pytest
from hitechcloud import HiTechCloud

def test_client_init():
    client = HiTechCloud(api_key="test-key")
    assert client is not None

def test_list_services():
    client = HiTechCloud(api_key="test-key")
    result = client.services.list_services()
    assert isinstance(result, dict)
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `HITECHCLOUD_API_KEY` | Your API key |
| `HITECHCLOUD_BASE_URL` | Custom base URL (default: `https://docs.hitechcloud.vn`) |

## More Examples

See the [`examples/python/`](../../examples/python/) directory for complete examples.
