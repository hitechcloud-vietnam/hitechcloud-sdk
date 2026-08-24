# HiTechCloud UserAPI SDK

> Official multi-language SDK for the [HiTechCloud User API](https://docs.hitechcloud.vn) — 348 endpoints across 38 groups.

## Overview

This repository contains official SDK implementations for the HiTechCloud User API in multiple programming languages. The SDKs provide a clean, idiomatic interface to manage your HiTechCloud account: services, domains, DNS, billing, support tickets, SSL certificates, and more.

## Supported Languages

| Language | Package | Status |
|----------|---------|--------|
| Python | `hitechcloud-sdk` (PyPI) | ✅ |
| Node.js | `hitechcloud-sdk` (npm) | ✅ |
| PHP | `hitechcloud/sdk` (Composer) | ✅ |
| Go | `github.com/hitechcloud-vietnam/hitechcloud-sdk/go` | ✅ |
| Ruby | `hitechcloud_sdk` (RubyGems) | ✅ |
| Java | `vn.hitechcloud:sdk` (Maven) | ✅ |
| C# | `HiTechCloud.SDK` (NuGet) | ✅ |
| Kotlin | `vn.hitechcloud:sdk-kotlin` (Maven) | ✅ |
| Swift | `HiTechCloudSDK` (SPM) | ✅ |
| Rust | `hitechcloud-sdk` (crates.io) | ✅ |
| Dart/Flutter | `hitechcloud_sdk` (pub.dev) | ✅ |
| R | `hitechcloudsdk` (CRAN) | ✅ |
| Julia | `HiTechCloudSDK.jl` | ✅ |
| Clojure | `hitechcloud/sdk` (Clojars) | ✅ |
| OCaml | `hitechcloud-sdk` (opam) | ✅ |
| Objective-C | HiTechCloudSDK (CocoaPods) | ✅ |
| Shell (Bash) | `hitechcloud.sh` | ✅ |
| PowerShell | `HiTechCloud.SDK` | ✅ |
| C (libcurl) | `libhitechcloud` | ✅ |

## API Groups

| Group | Endpoints | Description |
|-------|-----------|-------------|
| Account Authentication | 6 | Login, logout, token refresh, signup |
| User Profile | 3 | View/update account details, logs |
| Affiliate | 6 | Summary, campaigns, commissions, payouts |
| Billing & Contracts | 6 | Balance, invoices, payment methods |
| Support | 13 | Tickets, departments, news, knowledgebase |
| Contacts | 5 | CRUD contacts, privileges |
| Domains | 25 | WHOIS, nameservers, EPP, registration |
| DNS Manage | 10 | DNS records, DNSSEC, nameserver registration |
| SSL Certificates | 6 | List, order, download certificates |
| Services | 9 | List, details, cancel, renew, billing cycle |
| Cart | 6 | Categories, products, orders, quotes |
| DNS | 8 | DNS zones and records management |
| Notifications | 3 | Portal notifications |
| Virtualizor Services | 4 | VM suspend, unsuspend, rebuild, SSH keys |
| Cloud GPU | 6 | VM reboot, start, stop, firewall rules |

## Quick Start

### Authentication

```bash
# Get token
TOKEN=$(curl -s -X POST "https://ote.hitechcloud.vn/login" \
  -H "Content-Type: application/json" \
  -d '{"username":"demo@ote.hitechcloud.vn","password":"W9vTyPuJLyTVHAJ3Fe3Coi2h"}' \
  | grep -o '"token":"[^"]*"' | cut -d'"' -f4)

# Use token
curl -s "https://ote.hitechcloud.vn/service" \
  -H "Authorization: Bearer $TOKEN"
```

### Python

```python
from hitechcloud import HiTechCloud

client = HiTechCloud(
    base_url="https://ote.hitechcloud.vn",
    username="demo@ote.hitechcloud.vn",
    password="W9vTyPuJLyTVHAJ3Fe3Coi2h"
)

# List services
services = client.services.list()

# Get domain details
domain = client.domains.get(123)

# Create support ticket
ticket = client.support.create_ticket(
    subject="Need help",
    message="Having an issue with my service",
    department_id=1
)
```

### Node.js

```javascript
import { HiTechCloud } from 'hitechcloud-sdk';

const client = new HiTechCloud({
    baseUrl: 'https://ote.hitechcloud.vn',
    username: 'demo@ote.hitechcloud.vn',
    password: 'W9vTyPuJLyTVHAJ3Fe3Coi2h'
});

// List services
const services = await client.services.list();

// Get domain details
const domain = await client.domains.get(123);
```

### PHP

```php
use HiTechCloud\SDK\Client;

$client = new Client([
    'base_url' => 'https://ote.hitechcloud.vn',
    'username' => 'demo@ote.hitechcloud.vn',
    'password' => 'W9vTyPuJLyTVHAJ3Fe3Coi2h',
]);

// List services
$services = client->services()->list();

// Get domain details
$domain = client->domains()->get(123);
```

## Environments

| Environment | Base URL | Description |
|-------------|----------|-------------|
| Production | `https://api.hitechcloud.vn` | Real account data |
| OTE (Sandbox) | `https://ote.hitechcloud.vn` | Test environment with sample data |

## Rate Limits

- **120 requests/minute** per IP at the proxy layer
- Additional rate limits from the origin server
- `429` response with `Retry-After` header when exceeded

## Error Codes

| Code | Description |
|------|-------------|
| 401 | Missing or invalid authentication token |
| 403 | Insufficient permissions |
| 404 | Resource not found |
| 429 | Rate limit exceeded |
| 500 | Internal server error |
| 501 | Endpoint not implemented in OTE |

## Development

```bash
# Clone repository
git clone https://github.com/hitechcloud-vietnam/hitechcloud-sdk.git
cd hitechcloud-sdk

# Run tests (Python example)
cd python && pip install -e ".[dev]" && pytest

# Run tests (Node.js example)
cd node && npm install && npm test
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## License

MIT License - see [LICENSE](LICENSE) for details.

## Support

- 📧 Email: support@hitechcloud.vn
- 📖 Documentation: https://docs.hitechcloud.vn
- 🐛 Issues: https://github.com/hitechcloud-vietnam/hitechcloud-sdk/issues
