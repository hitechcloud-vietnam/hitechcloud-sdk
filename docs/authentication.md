# Authentication

The HiTechCloud User API supports two authentication methods:

## API Key (Basic Auth)

```python
client = HiTechCloud(api_key="your-api-key")
```

The API key is sent as a Basic Auth header.

## Bearer Token

```python
client = HiTechCloud(token="your-bearer-token")
```

The token is sent as `Authorization: Bearer <token>`.

## Getting Your API Key

1. Log in to [my.hitechcloud.vn](https://my.hitechcloud.vn)
2. Navigate to **Settings** → **API Keys**
3. Generate a new API key

## Security Best Practices

- Never commit API keys to version control
- Use environment variables: `HITECHCLOUD_API_KEY`
- Rotate keys periodically
- Use the minimum required permissions
