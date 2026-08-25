---
name: manage-hitechcloud-dns
description: Manage DNS zones and records on HiTechCloud
---

# Manage HiTechCloud DNS

Use this skill when the user wants to manage DNS zones or records.

## Steps

1. **List zones**: Get all DNS zones for the account
2. **Get zone details**: Retrieve current records for a zone
3. **Add/modify/delete records**: Make the requested changes
4. **Verify changes**: Confirm the changes were applied

## Code Pattern

```python
# List all zones
zones = client.dns.list_zones()

# Get records for a zone
records = client.dns.get_zone(id=zone_id)

# Add an A record
client.dns.create_record(zone_id=zone_id, data={
    'type': 'A',
    'name': 'www',
    'value': '1.2.3.4',
    'ttl': 3600
})
```
