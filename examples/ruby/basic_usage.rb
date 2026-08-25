#!/usr/bin/env ruby
/**
 * Basic usage example for HiTechCloud Ruby SDK
 * 
 * Set your API key:
 *   export HITECHCLOUD_API_KEY=your-api-key
 */
require 'hitechcloud'

client = HiTechCloud::Client.new(api_key: 'your-api-key')

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
