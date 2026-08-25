---
name: manage-hitechcloud-domains
description: Register, transfer, and manage domains on HiTechCloud
---

# Manage HiTechCloud Domains

Use this skill when the user wants to register, transfer, or manage domains.

## Steps

1. **Search domain**: Check availability and pricing
2. **Register/transfer**: Complete the registration or transfer
3. **Configure DNS**: Set up nameservers and DNS records
4. **Manage contacts**: Update WHOIS contact information

## Code Pattern

```python
# Search for domain availability
result = client.domains.search_domain(domain='example.com')

# Register domain
order = client.domains.register_domain(data={
    'domain': 'example.com',
    'years': 1,
    'registrant': {
        'name': 'Nguyen Van A',
        'email': 'a@example.com',
        'phone': '+84912345678'
    }
})

# Update nameservers
client.domains.update_nameservers(id=domain_id, data={
    'nameservers': ['ns1.hitechcloud.vn', 'ns2.hitechcloud.vn']
})
```
