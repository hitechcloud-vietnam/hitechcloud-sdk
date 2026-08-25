# Ruby SDK Guide

## Installation

```bash
gem install hitechcloud
```

## Initialization

```ruby
require 'hitechcloud'

client = HiTechCloud::Client.new(api_key: 'your-api-key')
```

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

## Testing

```ruby
require 'minitest/autorun'
require 'hitechcloud'

class HiTechCloudTest < Minitest::Test
  def test_client_init
    client = HiTechCloud::Client.new(api_key: 'test-key')
    assert client
  end
end
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `HITECHCLOUD_API_KEY` | Your API key |
| `HITECHCLOUD_BASE_URL` | Custom base URL (default: `https://docs.hitechcloud.vn`) |

## More Examples

See the [`examples/ruby/`](../../examples/ruby/) directory for complete examples.
