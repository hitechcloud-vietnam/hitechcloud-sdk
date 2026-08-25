# API Reference

Base URL: `https://docs.hitechcloud.vn`

## Resource Groups

| Group | Resource Class | Description |
|-------|---------------|-------------|
| Account Authentication | `account_authentication` | Login, logout, password reset |
| Affiliate | `affiliate` | Affiliate program management |
| Billing & Contracts | `billing_contracts` | Invoices, payments, contracts |
| Cart | `cart` | Shopping cart operations |
| Cloud GPU | `cloud_gpu` | GPU instances, clusters, volumes |
| Contacts | `contacts` | Contact management |
| DNS | `dns` | DNS zone management |
| DNS Manage | `dns_manage` | DNS record CRUD |
| Domains | `domains` | Domain registration, transfer, renewal |
| Notifications | `notifications` | Notification preferences |
| SSL Certificates | `ssl_certificates` | SSL certificate lifecycle |
| Services | `services` | Service management (VPS, hosting, etc.) |
| Support | `support` | Support tickets |
| User Profile | `user_profile` | Profile management |
| Virtualizor Services | `virtualizor_services` | Virtualizor VPS management |

## Common Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `id` | integer | Service/resource ID |
| `page` | integer | Page number for pagination |
| `per_page` | integer | Items per page (default: 20) |

## Response Format

All responses are JSON. Successful responses return HTTP 200 with the data.
Business errors also return HTTP 200 with an `error` field.

```json
{
  "success": true,
  "data": { ... }
}
```

Error response:
```json
{
  "error": "Service not found",
  "code": 404
}
```
