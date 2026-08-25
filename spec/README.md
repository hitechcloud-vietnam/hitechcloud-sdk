# HiTechCloud API Specification

## Files

- `openapi.json` — OpenAPI 3.0 specification (root of repo)
- `postman_collection.json` — Postman collection for testing
- `insomnia_config.json` — Insomnia workspace config

## Validation

```bash
# Validate the OpenAPI spec
npx @redocly/cli lint openapi.json
```

## Code Generation

The SDK code is generated from the OpenAPI spec:

```bash
# Generate Python SDK
openapi-generator generate -i openapi.json -g python -o sdk/python

# Generate Node.js SDK
openapi-generator generate -i openapi.json -g javascript -o sdk/nodejs
```

## Documentation

Interactive API documentation is available at:
- [docs.hitechcloud.vn](https://docs.hitechcloud.vn)
- [Swagger UI](https://docs.hitechcloud.vn/swagger)
