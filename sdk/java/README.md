# HiTechCloud Java SDK

Java SDK for HiTechCloud UserAPI - Manage hosting, domains, DNS, SSL, billing, and more.

## Installation

### Maven
```xml
<dependency>
    <groupId>vn.hitechcloud</groupId>
    <artifactId>hitechcloud-sdk</artifactId>
    <version>1.0.0</version>
</dependency>
```

### Gradle
```groovy
implementation 'vn.hitechcloud:hitechcloud-sdk:1.0.0'
```

## Quick Start

```java
import vn.hitechcloud.sdk.HiTechCloudClient;

// With API token
HiTechCloudClient client = new HiTechCloudClient("your-api-token");

// Login with email/password
HiTechCloudClient client = new HiTechCloudClient(null);
client.login("user@example.com", "password");

// List services
var services = client.services().list(null);

// Get domain details
var domain = client.domains().get(123);

// Logout
client.logout();
```

## Configuration

```java
// Custom base URL and settings
HiTechCloudClient client = new HiTechCloudClient(
    "token",                    // API token (null for no auth)
    HiTechCloudClient.OTE_URL, // Sandbox URL
    30,                         // Timeout (seconds)
    3                           // Max retries
);
```

## Resources

### Auth
```java
client.auth().login(email, password);
client.auth().logout();
client.auth().refreshToken();
client.auth().revokeToken();
client.auth().passwordReset(email);
client.auth().signup(email, password, firstName, lastName);
```

### Users
```java
client.users().getDetails();
client.users().updateDetails(data);
client.users().getLogs();
```

### Services
```java
client.services().list(params);
client.services().get(serviceId);
client.services().listMethods();
client.services().cancel(serviceId, reason);
client.services().getLabel(serviceId);
client.services().setLabel(serviceId, label);
client.services().renew(serviceId);
client.services().listBillingCycles(serviceId);
client.services().changeBillingCycle(serviceId, billingCycle);
```

### Domains
```java
client.domains().list(params);
client.domains().get(domainId);
client.domains().getByName(name);
client.domains().whois(domain);
client.domains().checkAvailability(domain);
client.domains().getNameservers(domainId);
client.domains().updateNameservers(domainId, ns);
client.domains().getEppCode(domainId);
client.domains().order(domain, years, extra);
client.domains().renew(domainId, years);
```

### DNS Manage
```java
client.dnsManage().getRecords(domainId);
client.dnsManage().createRecord(domainId, data);
client.dnsManage().updateRecord(domainId, recordId, data);
client.dnsManage().deleteRecord(domainId, recordId);
client.dnsManage().getRecordTypes();
client.dnsManage().getDnssecRecords(domainId);
```

### DNS
```java
client.dns().list(params);
client.dns().listForService(serviceId);
client.dns().addZone(data);
client.dns().getZone(zoneId);
client.dns().deleteZone(zoneId);
client.dns().addRecord(zoneId, data);
client.dns().editRecord(zoneId, recordId, data);
client.dns().deleteRecord(zoneId, recordId);
```

### SSL
```java
client.ssl().list(params);
client.ssl().get(sslId);
client.ssl().download(sslId);
client.ssl().listAvailable(params);
client.ssl().order(data);
client.ssl().listServerSoftware();
```

### Billing
```java
client.billing().getBalance();
client.billing().listInvoices(params);
client.billing().getInvoice(invoiceId);
client.billing().applyCredit(amount);
client.billing().getPaymentMethods();
client.billing().getPaymentFees();
```

### Support
```java
client.support().listDepartments();
client.support().listTickets(params);
client.support().getTicket(ticketId);
client.support().createTicket(data);
client.support().replyTicket(ticketId, message);
client.support().closeTicket(ticketId);
client.support().listNews(params);
client.support().listKbCategories();
client.support().listKbArticles(params);
client.support().searchKb(query);
client.support().listAnnouncements(params);
```

### Contacts
```java
client.contacts().list(params);
client.contacts().get(contactId);
client.contacts().create(data);
client.contacts().update(contactId, data);
client.contacts().delete(contactId);
```

### Cart
```java
client.cart().get();
client.cart().add(data);
client.cart().remove(itemId);
client.cart().applyPromo(code);
client.cart().checkout(data);
client.cart().getPaymentMethods();
```

### Notifications
```java
client.notifications().list(params);
client.notifications().getPreferences();
client.notifications().updatePreferences(data);
```

### Affiliate
```java
client.affiliate().getDetails();
client.affiliate().getBalance();
client.affiliate().getPayout();
client.affiliate().updatePayout(data);
client.affiliate().listReferrals(params);
client.affiliate().listTransactions(params);
```

### Cloud GPU
```java
client.cloudGpu().list(params);
client.cloudGpu().get(gpuId);
client.cloudGpu().start(gpuId);
client.cloudGpu().stop(gpuId);
client.cloudGpu().restart(gpuId);
client.cloudGpu().getConsole(gpuId);
```

### Virtualizor
```java
client.virtualizor().list(params);
client.virtualizor().get(vpsId);
client.virtualizor().start(vpsId);
client.virtualizor().stop(vpsId);
```

## Error Handling

```java
try {
    client.services().list(null);
} catch (AuthenticationException e) {
    System.out.println("Auth error: " + e.getMessage());
} catch (NotFoundException e) {
    System.out.println("Not found: " + e.getMessage());
} catch (RateLimitException e) {
    System.out.println("Rate limited, retry after: " + e.getRetryAfter() + "s");
} catch (ValidationException e) {
    System.out.println("Validation error: " + e.getMessage());
} catch (ServerException e) {
    System.out.println("Server error: " + e.getMessage());
} catch (HiTechCloudException e) {
    System.out.println("API error: " + e.getMessage());
}
```

## Requirements

- Java 11+
- Gson 2.10.1+

## License

MIT
