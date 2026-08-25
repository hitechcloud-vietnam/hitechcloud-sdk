#!/usr/bin/env node
/**
 * HiTechCloud MCP Server
 * Model Context Protocol server for HiTechCloud User API
 */
const { Server } = require('@modelcontextprotocol/sdk/server/index.js');
const { StdioServerTransport } = require('@modelcontextprotocol/sdk/server/stdio.js');

const API_BASE = process.env.HITECHCLOUD_BASE_URL || 'https://docs.hitechcloud.vn';
const API_KEY = process.env.HITECHCLOUD_API_KEY;

async function apiCall(method, path, body = null) {
    const url = `${API_BASE}${path}`;
    const headers = {
        'Authorization': `Basic ${Buffer.from(API_KEY + ':').toString('base64')}`,
        'Content-Type': 'application/json',
        'User-Agent': 'HiTechCloud-MCP/1.0'
    };
    const opts = { method, headers };
    if (body) opts.body = JSON.stringify(body);
    const res = await fetch(url, opts);
    return res.json();
}

const TOOLS = [
    {
        name: 'list_services',
        description: 'List all HiTechCloud services',
        inputSchema: { type: 'object', properties: {} }
    },
    {
        name: 'get_service',
        description: 'Get details of a specific service',
        inputSchema: {
            type: 'object',
            properties: { id: { type: 'number', description: 'Service ID' } },
            required: ['id']
        }
    },
    {
        name: 'start_service',
        description: 'Start a stopped service',
        inputSchema: {
            type: 'object',
            properties: { id: { type: 'number', description: 'Service ID' } },
            required: ['id']
        }
    },
    {
        name: 'stop_service',
        description: 'Stop a running service',
        inputSchema: {
            type: 'object',
            properties: { id: { type: 'number', description: 'Service ID' } },
            required: ['id']
        }
    },
    {
        name: 'reboot_service',
        description: 'Reboot a service',
        inputSchema: {
            type: 'object',
            properties: { id: { type: 'number', description: 'Service ID' } },
            required: ['id']
        }
    },
    {
        name: 'list_dns_zones',
        description: 'List all DNS zones',
        inputSchema: { type: 'object', properties: {} }
    },
    {
        name: 'list_domains',
        description: 'List all domains',
        inputSchema: { type: 'object', properties: {} }
    },
    {
        name: 'list_invoices',
        description: 'List all invoices',
        inputSchema: { type: 'object', properties: {} }
    }
];

const HANDLERS = {
    list_services: () => apiCall('GET', '/api/service'),
    get_service: (args) => apiCall('GET', `/api/service/${args.id}`),
    start_service: (args) => apiCall('POST', `/api/service/${args.id}/start`),
    stop_service: (args) => apiCall('POST', `/api/service/${args.id}/stop`),
    reboot_service: (args) => apiCall('POST', `/api/service/${args.id}/reboot`),
    list_dns_zones: () => apiCall('GET', '/api/dns/zone'),
    list_domains: () => apiCall('GET', '/api/domain'),
    list_invoices: () => apiCall('GET', '/api/invoice'),
};

async function main() {
    const server = new Server(
        { name: 'hitechcloud', version: '1.0.0' },
        { capabilities: { tools: {} } }
    );

    server.setRequestHandler('tools/list', async () => ({ tools: TOOLS }));

    server.setRequestHandler('tools/call', async (request) => {
        const { name, arguments: args } = request.params;
        const handler = HANDLERS[name];
        if (!handler) throw new Error(`Unknown tool: ${name}`);
        const result = await handler(args || {});
        return { content: [{ type: 'text', text: JSON.stringify(result, null, 2) }] };
    });

    const transport = new StdioServerTransport();
    await server.connect(transport);
    console.error('HiTechCloud MCP server running on stdio');
}

main().catch(console.error);
