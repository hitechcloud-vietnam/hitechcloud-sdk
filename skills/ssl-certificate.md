---
name: manage-hitechcloud-ssl
description: Manage SSL certificates on HiTechCloud
---

# Manage HiTechCloud SSL Certificates

Use this skill when the user wants to purchase, install, or manage SSL certificates.

## Steps

1. **List certificates**: Get all SSL certificates
2. **Check status**: Verify certificate status and expiry
3. **Generate CSR**: Create a Certificate Signing Request
4. **Submit DCV**: Complete Domain Control Validation
5. **Install certificate**: Download and install the certificate

## Code Pattern

```python
# List certificates
certs = client.ssl.list_certificates()

# Get certificate details
cert = client.ssl.get_certificate(id=cert_id)

# Generate CSR
csr = client.ssl.generate_csr(data={
    'domain': 'example.com',
    'organization': 'My Company',
    'country': 'VN'
})
```
