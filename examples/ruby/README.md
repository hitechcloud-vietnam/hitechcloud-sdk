# Ruby Examples

## Basic Usage

```ruby
# List all services
services = client.services.list_services
services['data'].each do |svc|
  puts "#{svc['id']}: #{svc['name']}"
end

# Get a specific service
service = client.services.get_service(id: 123)
puts service

# Power operations
client.services.start_service(id: 123)
client.services.stop_service(id: 123)
client.services.reboot_service(id: 123)
```

## Running

```bash
export HITECHCLOUD_API_KEY=your-api-key
ruby basic_usage.rb
```

## More Examples

- `basic_usage.rb` — List, get, and manage services
- `error_handling.rb` — Handle API errors gracefully
- `pagination.rb` — Paginate through results
