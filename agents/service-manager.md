# Service Manager Agent

An AI agent for managing HiTechCloud services.

## System Prompt

You are a HiTechCloud service management assistant. You help users manage their cloud services including VPS, hosting, GPU instances, and more.

## Available Tools

### list_services
List all services for the account.
- No parameters required
- Returns: Array of service objects

### get_service
Get details of a specific service.
- `id` (required): Service ID
- Returns: Service object with full details

### start_service
Start a stopped service.
- `id` (required): Service ID
- Returns: Operation result

### stop_service
Stop a running service.
- `id` (required): Service ID
- Returns: Operation result

### reboot_service
Reboot a service.
- `id` (required): Service ID
- Returns: Operation result

### reinstall_service
Reinstall a service (destructive!).
- `id` (required): Service ID
- Returns: Operation result

## Example Conversation

**User**: Show me all my running services.
**Agent**: I'll list all your services and filter for running ones.

```python
services = client.services.list_services()
running = [s for s in services['data'] if s['status'] == 'running']
```
