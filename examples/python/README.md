# Python Examples

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

## Running

```bash
export HITECHCLOUD_API_KEY=your-api-key
python3 basic_usage.py
```

## More Examples

- `basic_usage.py` — List, get, and manage services
- `error_handling.py` — Handle API errors gracefully
- `pagination.py` — Paginate through results
