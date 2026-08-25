# Development Tools

Tools for developing and testing the HiTechCloud SDK.

## Scripts

- `generate_sdk.py` — Generate SDK code from OpenAPI spec
- `validate_spec.py` — Validate the OpenAPI specification
- `run_tests.sh` — Run tests for all language SDKs
- `check_endpoints.py` — Verify all endpoints are implemented

## Usage

```bash
# Validate the spec
python3 tools/validate_spec.py

# Check endpoint coverage
python3 tools/check_endpoints.py

# Run all tests
bash tools/run_tests.sh
```
