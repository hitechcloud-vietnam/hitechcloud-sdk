#!/usr/bin/env node
/**
 * Basic usage example for HiTechCloud Nodejs SDK
 * 
 * Set your API key:
 *   export HITECHCLOUD_API_KEY=your-api-key
 */
const HiTechCloud = require('@hitechcloud/sdk');

const client = new HiTechCloud({ apiKey: 'your-api-key' });

// List all services
const services = await client.services.listServices();
console.log(services.data);

// Get a specific service
const service = await client.services.getService({ id: 123 });
console.log(service);

// Power operations
await client.services.startService({ id: 123 });
await client.services.stopService({ id: 123 });
await client.services.rebootService({ id: 123 });
