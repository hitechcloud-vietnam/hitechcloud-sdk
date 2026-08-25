# HiTechCloud hitechcloud-sdk — R SDK

> **Status:** Planned — contributions welcome!

## Installation

```r
devtools::install_github("hitechcloud/hitechcloud-sdk-r")
```

## Quick Start

```r
library(hitechcloud.sdk)
client <- Client(base_url = "https://api.hitechcloud.vn", token = "your-token")
result <- getSummary(client$affiliate)
print(result)
```

## Resources

| Resource | Description | Methods |
|----------|-------------|---------|
| `affiliate` | Affiliate: affiliate program management | 6 |
| `affiliatesAdvanced` | AffiliatesAdvanced: advanced affiliate management with client_id | 14 |
| `aiFactory` | HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters | 36 |
| `auth` | Account Authentication: login, logout, token refresh, signup, password reset | 6 |
| `bareMetal` | Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power | 21 |
| `billing` | Billing & Contracts: balance, invoices, payment methods | 6 |
| `cart` | Cart: shopping cart management | 6 |
| `cephS3` | Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation | 11 |
| `cloudGpu` | Cloud GPU: GPU instance management | 6 |
| `cloudInstance` | Cloud Instance: full VM lifecycle management | 25 |
| `cloudService` | Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces | 10 |
| `cloudVm` | Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE | 9 |
| `collocation` | Collocation Services: PDU port management | 3 |
| `contacts` | Contacts: manage account contacts | 5 |
| `dns` | DNS: zones and records management for services | 8 |
| `dnsManage` | DNS Manage: domain DNS records, DNSSEC, nameserver registration | 10 |
| `domains` | Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding | 22 |
| `emailMfaV2` | EmailMfaV2: email-based MFA management | 6 |
| `hosting` | Hosting Services: reinstall, status, bandwidth, reset | 6 |
| `ipam` | HiTechCloudIPAM: IP addresses, subnets, reverse DNS | 4 |
| `locationV2` | LocationV2: countries, states, cities lookup | 4 |
| `networkServices` | Network Services: IP addresses and reverse DNS for services | 3 |
| `notifications` | Notifications: manage notification preferences | 3 |
| `partner` | Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates | 13 |
| `passkeyV2` | PasskeyV2: passkey-based MFA management | 6 |
| `pmg` | HiTechCloudPMG: mail filtering configuration and management | 4 |
| `proxmox` | HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth | 10 |
| `proxmoxBackup` | Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token | 9 |
| `serviceStatus` | Service Status: list and manage service statuses | 2 |
| `services` | Services: list, details, cancel, renew, billing cycle | 9 |
| `ssl` | SSL Certificates: list, order, download certificates | 6 |
| `support` | Support: tickets, departments, news, knowledgebase | 13 |
| `urlShortener` | URL Shortener: shorten URLs, manage links, stats | 6 |
| `users` | User Profile: view/update account details, logs | 3 |
| `vcloudstack` | vCloudStack Public Cloud: rescue, unrescue, console, usage | 4 |
| `virtualizor` | Virtualizor: VPS management via Virtualizor panel | 4 |
| `vneidekyc` | VNeIDEKYC: eKYC identity verification and organization verification | 16 |
| `willExpired` | WillExpired: expiring services and domains management | 10 |

## License

MIT
