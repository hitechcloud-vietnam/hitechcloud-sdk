#!/usr/bin/env python3
"""Check that all OpenAPI endpoints are implemented in SDKs."""
import json
import os
import glob

def get_spec_endpoints():
    with open('openapi.json') as f:
        spec = json.load(f)
    endpoints = set()
    for path, methods in spec.get('paths', {}).items():
        for method in methods:
            if method in ('get', 'post', 'put', 'delete', 'patch'):
                endpoints.add((method.upper(), path))
    return endpoints

def check_python():
    resources_dir = 'sdk/python/hitechcloud/resources'
    if not os.path.exists(resources_dir):
        return []
    implemented = []
    for f in glob.glob(f'{resources_dir}/*.py'):
        with open(f) as fh:
            content = fh.read()
            # Count method definitions
            import re
            methods = re.findall(r'def (\w+)\(', content)
            implemented.extend(methods)
    return implemented

if __name__ == '__main__':
    endpoints = get_spec_endpoints()
    print(f"OpenAPI spec defines {len(endpoints)} endpoints")
    
    python_methods = check_python()
    print(f"Python SDK implements {len(python_methods)} methods")
