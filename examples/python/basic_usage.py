#!/usr/bin/env python3
/**
 * Basic usage example for HiTechCloud Python SDK
 * 
 * Set your API key:
 *   export HITECHCLOUD_API_KEY=your-api-key
 */
from hitechcloud import HiTechCloud

client = HiTechCloud(api_key="your-api-key")

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
