#!/usr/bin/env java
/**
 * Basic usage example for HiTechCloud Java SDK
 * 
 * Set your API key:
 *   export HITECHCLOUD_API_KEY=your-api-key
 */
import vn.hitechcloud.HiTechCloud;

HiTechCloud client = new HiTechCloud("your-api-key");

// List all services
var services = client.services().listServices();
System.out.println(services);

// Get a specific service
var service = client.services().getService(123);
System.out.println(service);

// Power operations
client.services().startService(123);
client.services().stopService(123);
client.services().rebootService(123);
