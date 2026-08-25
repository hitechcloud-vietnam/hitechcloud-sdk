# Rate Limiting

## Limits

- **Authenticated requests**: 1000 requests per minute
- **Unauthenticated requests**: 60 requests per minute

## Headers

Rate limit information is returned in headers:

| Header | Description |
|--------|-------------|
| `X-RateLimit-Limit` | Maximum requests per window |
| `X-RateLimit-Remaining` | Remaining requests |
| `X-RateLimit-Reset` | Unix timestamp when the window resets |

## Handling Rate Limits

When you exceed the rate limit, you'll receive a 429 response. The SDK handles this automatically with exponential backoff.

```python
# The SDK will automatically retry with backoff
result = client.services.get_service(id=123)
```

## Best Practices

- Cache responses when possible
- Use bulk endpoints instead of individual calls
- Implement request queuing for high-volume applications
