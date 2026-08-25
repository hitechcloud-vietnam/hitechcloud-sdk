---
name: deploy-hitechcloud-service
description: Deploy and manage HiTechCloud services (VPS, hosting, GPU)
---

# Deploy HiTechCloud Service

Use this skill when the user wants to deploy, manage, or troubleshoot HiTechCloud services.

## Steps

1. **Identify service type**: Ask the user what type of service (VPS, hosting, GPU, etc.)
2. **Check availability**: Use the API to check available products and pricing
3. **Create service**: Use the order endpoint to create the service
4. **Verify deployment**: Check service status after creation

## Code Pattern

```python
from hitechcloud import HiTechCloud

client = HiTechCloud(api_key=os.environ['HITECHCLOUD_API_KEY'])

# List available products
products = client.cart.list_products()

# Create an order
order = client.cart.create_order(product_id=123, config={
    'hostname': 'my-server',
    'os': 'ubuntu-22.04',
    'region': 'vn-hanoi'
})

# Check service status
service = client.services.get_service(id=order['service_id'])
print(f"Status: {service['status']}")
```
