# HiTechCloud Python SDK

[![PyPI version](https://img.shields.io/pypi/v/hitechcloud-sdk)](https://pypi.org/project/hitechcloud-sdk/)
[![Python](https://img.shields.io/pypi/pyversions/hitechcloud-sdk)](https://pypi.org/project/hitechcloud-sdk/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Official Python SDK for [HiTechCloud UserAPI](https://docs.hitechcloud.vn).

## Installation

```bash
pip install hitechcloud-sdk
```

For async support:
```bash
pip install hitechcloud-sdk[async]
```

## Quick Start

```python
from hitechcloud import HiTechCloud

# Using credentials
client = HiTechCloud(
    base_url="https://api.hitechcloud.vn",
    username="your@email.com",
    password="your_password"
)

# Or using existing token
client = HiTechCloud(
    base_url="https://api.hitechcloud.vn",
    token="your_api_token"
)

# Context manager (auto-closes session)
with HiTechCloud(token="your_token") as client:
    services = client.services.list()
    domains = client.domains.list()
```

## Environments

| Environment | Base URL |
|-------------|----------|
| Production  | `https://api.hitechcloud.vn` |
| Sandbox (OTE) | `https://ote.hitechcloud.vn` |

## API Groups

### Account & Authentication
```python
client.auth.login("email", "password")
client.auth.logout()
client.auth.refresh_token()
client.auth.revoke_token()
client.auth.password_reset("email")
client.auth.signup("email", "password", "first_name", "last_name")
```

### User Profile
```python
client.users.get_details()
client.users.update_details(first_name="New Name")
client.users.get_logs()
```

### Services
```python
client.services.list()
client.services.get(service_id)
client.services.cancel(service_id, reason="No longer needed")
client.services.renew(service_id)
```

### Domains
```python
client.domains.list()
client.domains.get(domain_id)
client.domains.whois("example.com")
client.domains.check_availability("example.com")
client.domains.get_nameservers(domain_id)
client.domains.update_nameservers(domain_id, ns1="ns1.example.com", ns2="ns2.example.com")
client.domains.get_epp_code(domain_id)
```

### DNS Management
```python
# Domain DNS records
client.dns_manage.get_records(domain_id)
client.dns_manage.create_record(domain_id, name="www", record_type="A", content="1.2.3.4")
client.dns_manage.update_record(domain_id, index=0, content="5.6.7.8")
client.dns_manage.delete_record(domain_id, index=0)

# Service DNS zones
client.dns.list()
client.dns.add_zone(service_id, "example.com")
client.dns.add_record(service_id, zone_id, name="@",
                       record_type="A", content="1.2.3.4")
```

### SSL Certificates
```python
client.ssl.list()
client.ssl.get(certificate_id)
client.ssl.download(certificate_id)
client.ssl.order(product_id=1, csr="-----BEGIN CERTIFICATE REQUEST-----...")
```

### Billing
```python
client.billing.get_balance()
client.billing.list_invoices()
client.billing.get_invoice(invoice_id)
client.billing.apply_credit(invoice_id)
client.billing.get_payment_methods()
```

### Support
```python
client.support.list_tickets()
client.support.create_ticket(subject="Help", message="...", department_id=1)
client.support.get_ticket("TKT-001")
client.support.reply("TKT-001", message="Additional info")
client.support.close("TKT-001")
```

### Contacts
```python
client.contacts.list()
client.contacts.create(first_name="John", last_name="Doe", email="john@example.com")
client.contacts.update(contact_id, phone="+84901234567")
client.contacts.delete(contact_id)
```

### Cart
```python
client.cart.get()
client.cart.add(product_id=1, billing_cycle="monthly")
client.cart.apply_promo("DISCOUNT20")
client.cart.checkout(payment_method="sepay")
```

### Notifications
```python
client.notifications.list()
client.notifications.get_preferences()
client.notifications.update_preferences(email=True, sms=False)
```

### Affiliate
```python
client.affiliate.get_details()
client.affiliate.get_balance()
client.affiliate.list_referrals()
client.affiliate.list_transactions()
```

### Cloud GPU
```python
client.cloud_gpu.list()
client.cloud_gpu.get(gpu_id)
client.cloud_gpu.start(gpu_id)
client.cloud_gpu.stop(gpu_id)
client.cloud_gpu.restart(gpu_id)
```

### Virtualizor
```python
client.virtualizor.list()
client.virtualizor.get(vps_id)
client.virtualizor.start(vps_id)
client.virtualizor.stop(vps_id)
```

## Error Handling

```python
from hitechcloud import (
    HiTechCloud,
    HiTechCloudError,
    AuthenticationError,
    AuthorizationError,
    NotFoundError,
    RateLimitError,
    ValidationError,
    ServerError,
)

try:
    client.domains.get(99999)
except AuthenticationError:
    print("Invalid credentials or expired token")
except NotFoundError:
    print("Resource not found")
except RateLimitError as e:
    print(f"Rate limited. Retry after {e.retry_after} seconds")
except ValidationError as e:
    print(f"Validation error: {e}")
except ServerError:
    print("Server error, please try again later")
except HiTechCloudError as e:
    print(f"API error: {e}")
```

## Rate Limiting

The SDK automatically handles rate limits (HTTP 429) by:
1. Reading the `Retry-After` header
2. Raising `RateLimitError` with `retry_after` attribute
3. Implementing exponential backoff for retries

## Development

```bash
# Install dev dependencies
pip install -e ".[dev]"

# Run tests
pytest

# Run tests with coverage
pytest --cov=hitechcloud
```

## License

MIT License - see [LICENSE](../LICENSE) for details.
