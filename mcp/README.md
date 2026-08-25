# HiTechCloud MCP Server

Model Context Protocol (MCP) server for the HiTechCloud User API.

## Setup

1. Install dependencies:
   ```bash
   cd mcp && npm install
   ```

2. Configure environment:
   ```bash
   export HITECHCLOUD_API_KEY=your-api-key
   ```

3. Run the server:
   ```bash
   node server.js
   ```

## Available Tools

| Tool | Description |
|------|-------------|
| `list_services` | List all services |
| `get_service` | Get service details |
| `start_service` | Start a service |
| `stop_service` | Stop a service |
| `reboot_service` | Reboot a service |
| `list_dns_zones` | List DNS zones |
| `manage_dns_record` | Create/update/delete DNS records |
| `list_domains` | List domains |
| `search_domain` | Search domain availability |
| `list_invoices` | List invoices |

## Integration with Claude Desktop

Add to your Claude Desktop config:

```json
{
  "mcpServers": {
    "hitechcloud": {
      "command": "node",
      "args": ["/path/to/hitechcloud-sdk/mcp/server.js"],
      "env": {
        "HITECHCLOUD_API_KEY": "your-api-key"
      }
    }
  }
}
```
