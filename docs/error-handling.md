# Error Handling

## HTTP Status Codes

| Code | Meaning |
|------|---------|
| 200 | Success (or business error — check response body) |
| 401 | Unauthorized — invalid or missing credentials |
| 403 | Forbidden — insufficient permissions |
| 404 | Not found |
| 422 | Validation error |
| 429 | Rate limit exceeded |
| 500 | Internal server error |

## Business Errors

HiTechCloud returns business errors in HTTP 200 responses. Always check the response body:

```python
try:
    result = client.services.get_service(id=123)
    if 'error' in result:
        print(f"Business error: {result['error']}")
except HiTechCloudError as e:
    print(f"API error: {e.status_code} - {e.message}")
```

## Retry Logic

The SDK automatically retries on:
- 429 (rate limit) — with exponential backoff
- 500, 502, 503, 504 — up to 3 times

Disable with: `client = HiTechCloud(retry=False)`
