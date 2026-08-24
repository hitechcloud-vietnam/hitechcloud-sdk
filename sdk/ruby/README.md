# HiTechCloud Ruby SDK

Ruby SDK for HiTechCloud UserAPI - Manage hosting, domains, DNS, SSL, billing, and more.

## Installation

```ruby
# In your Gemfile
gem 'hitechcloud'

# Or install directly
gem install hitechcloud
```

## Quick Start

```ruby
require 'hitechcloud'

# Login with email/password
client = HiTechCloud::Client.new(
  email: 'user@example.com',
  password: 'password'
)

# Or with API token
client = HiTechCloud::Client.new(token: 'your-api-token')

# List services
services = client.services.list

# Get domain details
domain = client.domains.get(123)

# Logout
client.logout
```

## Configuration

```ruby
client = HiTechCloud::Client.new(
  token: 'your-token',          # API token
  email: 'user@example.com',    # Email for auto-login
  password: 'password',         # Password for auto-login
  base_url: 'https://...',      # Custom base URL
  sandbox: true,                # Use sandbox environment
  timeout: 30,                  # Request timeout (seconds)
  max_retries: 3                # Max retry attempts
)
```

## Resources

### Auth
```ruby
client.auth.login(email, password)
client.auth.logout
client.auth.refresh_token
client.auth.revoke_token
client.auth.password_reset(email)
client.auth.signup(email:, password:, first_name:, last_name:)
```

### Users
```ruby
client.users.get_details
client.users.update_details(data)
client.users.get_logs
```

### Services
```ruby
client.services.list(params)
client.services.get(service_id)
client.services.list_methods
client.services.cancel(service_id, reason)
client.services.get_label(service_id)
client.services.set_label(service_id, label)
client.services.renew(service_id)
client.services.list_billing_cycles(service_id)
client.services.change_billing_cycle(service_id, billing_cycle)
```

### Domains
```ruby
client.domains.list(params)
client.domains.get(domain_id)
client.domains.get_by_name(name)
client.domains.whois(domain)
client.domains.check_availability(domain)
client.domains.get_nameservers(domain_id)
client.domains.update_nameservers(domain_id, ns)
client.domains.get_epp_code(domain_id)
client.domains.order(domain: 'example.com', years: 1)
client.domains.renew(domain_id, years)
```

### DNS Manage
```ruby
client.dns_manage.get_records(domain_id)
client.dns_manage.create_record(domain_id, data)
client.dns_manage.update_record(domain_id, record_id, data)
client.dns_manage.delete_record(domain_id, record_id)
client.dns_manage.get_record_types
client.dns_manage.get_dnssec_records(domain_id)
```

### DNS
```ruby
client.dns.list(params)
client.dns.list_for_service(service_id)
client.dns.add_zone(data)
client.dns.get_zone(zone_id)
client.dns.delete_zone(zone_id)
client.dns.add_record(zone_id, data)
client.dns.edit_record(zone_id, record_id, data)
client.dns.delete_record(zone_id, record_id)
```

### SSL
```ruby
client.ssl.list(params)
client.ssl.get(ssl_id)
client.ssl.download(ssl_id)
client.ssl.list_available(params)
client.ssl.order(data)
client.ssl.list_server_software
```

### Billing
```ruby
client.billing.get_balance
client.billing.list_invoices(params)
client.billing.get_invoice(invoice_id)
client.billing.apply_credit(amount)
client.billing.get_payment_methods
client.billing.get_payment_fees
```

### Support
```ruby
client.support.list_departments
client.support.list_tickets(params)
client.support.get_ticket(ticket_id)
client.support.create_ticket(data)
client.support.reply_ticket(ticket_id, message)
client.support.close_ticket(ticket_id)
client.support.list_news(params)
client.support.list_kb_categories
client.support.list_kb_articles(params)
client.support.search_kb(query)
client.support.list_announcements(params)
```

### Contacts
```ruby
client.contacts.list(params)
client.contacts.get(contact_id)
client.contacts.create(data)
client.contacts.update(contact_id, data)
client.contacts.delete(contact_id)
```

### Cart
```ruby
client.cart.get
client.cart.add(data)
client.cart.remove(item_id)
client.cart.apply_promo(code)
client.cart.checkout(data)
client.cart.get_payment_methods
```

### Notifications
```ruby
client.notifications.list(params)
client.notifications.get_preferences
client.notifications.update_preferences(data)
```

### Affiliate
```ruby
client.affiliate.get_details
client.affiliate.get_balance
client.affiliate.get_payout
client.affiliate.update_payout(data)
client.affiliate.list_referrals(params)
client.affiliate.list_transactions(params)
```

### Cloud GPU
```ruby
client.cloud_gpu.list(params)
client.cloud_gpu.get(gpu_id)
client.cloud_gpu.start(gpu_id)
client.cloud_gpu.stop(gpu_id)
client.cloud_gpu.restart(gpu_id)
client.cloud_gpu.get_console(gpu_id)
```

### Virtualizor
```ruby
client.virtualizor.list(params)
client.virtualizor.get(vps_id)
client.virtualizor.start(vps_id)
client.virtualizor.stop(vps_id)
```

## Error Handling

```ruby
begin
  client.services.list
rescue HiTechCloud::AuthenticationError => e
  puts "Auth error: #{e.message}"
rescue HiTechCloud::NotFoundError => e
  puts "Not found: #{e.message}"
rescue HiTechCloud::RateLimitError => e
  puts "Rate limited, retry after: #{e.retry_after}s"
rescue HiTechCloud::ValidationError => e
  puts "Validation error: #{e.message}"
rescue HiTechCloud::ServerError => e
  puts "Server error: #{e.message}"
end
```

## License

MIT
