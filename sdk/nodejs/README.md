# HiTechCloud Node.js SDK

[![npm version](https://img.shields.io/npm/v/hitechcloud-sdk)](https://www.npmjs.com/package/hitechcloud-sdk)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Official Node.js SDK for [HiTechCloud UserAPI](https://docs.hitechcloud.vn).

## Installation

```bash
npm install hitechcloud-sdk
```

## Quick Start

```javascript
const { HiTechCloud } = require("hitechcloud-sdk");

// Using credentials
const client = new HiTechCloud({
  baseUrl: "https://api.hitechcloud.vn",
  username: "your@email.com",
  password: "your_password",
});

// Or using existing token
const client = new HiTechCloud({
  token: "your_api_token",
});

// All methods return Promises
async function main() {
  const services = await client.services.list();
  const domains = await client.domains.list();
  const balance = await client.billing.getBalance();
  console.log(services, domains, balance);
}

main();
```

## Environments

| Environment | Base URL |
|-------------|----------|
| Production  | `https://api.hitechcloud.vn` |
| Sandbox (OTE) | `https://ote.hitechcloud.vn` |

## API Groups

### Account & Authentication
```javascript
await client.auth.login("email", "password");
await client.auth.logout();
await client.auth.refreshToken();
await client.auth.revokeToken();
await client.auth.passwordReset("email");
await client.auth.signup("email", "password", "firstName", "lastName");
```

### User Profile
```javascript
await client.users.getDetails();
await client.users.updateDetails({ first_name: "New Name" });
await client.users.getLogs();
```

### Services
```javascript
await client.services.list();
await client.services.get(serviceId);
await client.services.cancel(serviceId, "No longer needed");
await client.services.renew(serviceId);
```

### Domains
```javascript
await client.domains.list();
await client.domains.get(domainId);
await client.domains.whois("example.com");
await client.domains.checkAvailability("example.com");
await client.domains.getNameservers(domainId);
await client.domains.updateNameservers(domainId, { ns1: "ns1.example.com", ns2: "ns2.example.com" });
await client.domains.getEppCode(domainId);
```

### DNS Management
```javascript
// Domain DNS records
await client.dnsManage.getRecords(domainId);
await client.dnsManage.createRecord(domainId, { name: "www", type: "A", content: "1.2.3.4" });

// Service DNS zones
await client.dns.list();
await client.dns.addZone(serviceId, "example.com");
await client.dns.addRecord(serviceId, zoneId, { name: "@", type: "A", content: "1.2.3.4" });
```

### SSL Certificates
```javascript
await client.ssl.list();
await client.ssl.get(certificateId);
await client.ssl.download(certificateId);
await client.ssl.order({ product_id: 1, csr: "-----BEGIN CERTIFICATE REQUEST-----..." });
```

### Billing
```javascript
await client.billing.getBalance();
await client.billing.listInvoices();
await client.billing.getInvoice(invoiceId);
await client.billing.applyCredit(invoiceId);
await client.billing.getPaymentMethods();
```

### Support
```javascript
await client.support.listTickets();
await client.support.createTicket({ subject: "Help", message: "...", department_id: 1 });
await client.support.getTicket("TKT-001");
await client.support.reply("TKT-001", "Additional info");
await client.support.close("TKT-001");
```

### Contacts
```javascript
await client.contacts.list();
await client.contacts.create({ first_name: "John", last_name: "Doe", email: "john@example.com" });
await client.contacts.update(contactId, { phone: "+84901234567" });
await client.contacts.delete(contactId);
```

### Cart
```javascript
await client.cart.get();
await client.cart.add(1, { billing_cycle: "monthly" });
await client.cart.applyPromo("DISCOUNT20");
await client.cart.checkout({ payment_method: "sepay" });
```

### Notifications
```javascript
await client.notifications.list();
await client.notifications.getPreferences();
await client.notifications.updatePreferences({ email: true, sms: false });
```

### Affiliate
```javascript
await client.affiliate.getDetails();
await client.affiliate.getBalance();
await client.affiliate.listReferrals();
await client.affiliate.listTransactions();
```

### Cloud GPU
```javascript
await client.cloudGpu.list();
await client.cloudGpu.get(gpuId);
await client.cloudGpu.start(gpuId);
await client.cloudGpu.stop(gpuId);
await client.cloudGpu.restart(gpuId);
```

### Virtualizor
```javascript
await client.virtualizor.list();
await client.virtualizor.get(vpsId);
await client.virtualizor.start(vpsId);
await client.virtualizor.stop(vpsId);
```

## Error Handling

```javascript
const {
  HiTechCloudError,
  AuthenticationError,
  NotFoundError,
  RateLimitError,
  ValidationError,
  ServerError,
} = require("hitechcloud-sdk");

try {
  await client.domains.get(99999);
} catch (error) {
  if (error instanceof AuthenticationError) {
    console.log("Invalid credentials or expired token");
  } else if (error instanceof NotFoundError) {
    console.log("Resource not found");
  } else if (error instanceof RateLimitError) {
    console.log(`Rate limited. Retry after ${error.retryAfter} seconds`);
  } else if (error instanceof ValidationError) {
    console.log("Validation error:", error.data);
  } else if (error instanceof ServerError) {
    console.log("Server error, please try again later");
  }
}
```

## License

MIT License - see [LICENSE](../../LICENSE) for details.
