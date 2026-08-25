#!/usr/bin/env python3
"""Validate the OpenAPI specification."""
import json
import sys

def validate():
    with open('openapi.json') as f:
        spec = json.load(f)
    
    errors = []
    
    # Check required fields
    if 'openapi' not in spec:
        errors.append("Missing 'openapi' version")
    if 'info' not in spec:
        errors.append("Missing 'info' object")
    elif 'title' not in spec['info']:
        errors.append("Missing 'info.title'")
    elif 'version' not in spec['info']:
        errors.append("Missing 'info.version'")
    
    # Check paths
    paths = spec.get('paths', {})
    if not paths:
        errors.append("No paths defined")
    
    for path, methods in paths.items():
        for method, details in methods.items():
            if method in ('get', 'post', 'put', 'delete', 'patch'):
                if not isinstance(details, dict):
                    errors.append(f"{method.upper()} {path}: invalid definition")
                elif 'responses' not in details:
                    errors.append(f"{method.upper()} {path}: missing responses")
    
    if errors:
        print(f"Validation failed with {len(errors)} errors:")
        for e in errors:
            print(f"  - {e}")
        sys.exit(1)
    else:
        print(f"Validation passed! {len(paths)} paths defined.")

if __name__ == '__main__':
    validate()
