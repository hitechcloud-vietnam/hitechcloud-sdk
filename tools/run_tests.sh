#!/bin/bash
# Run tests for all language SDKs
set -e

echo "=== Python Tests ==="
cd sdk/python && python3 -m pytest tests/ -v && cd ../..

echo "=== Node.js Tests ==="
cd sdk/nodejs && npm test && cd ../..

echo "=== PHP Tests ==="
cd sdk/php && ./vendor/bin/phpunit && cd ../..

echo "=== Go Tests ==="
cd sdk/go && go test ./... && cd ../..

echo "=== Ruby Tests ==="
cd sdk/ruby && bundle exec rake test && cd ../..

echo "=== Java Tests ==="
cd sdk/java && mvn test && cd ../..

echo "=== C# Tests ==="
cd sdk/csharp && dotnet test && cd ../..

echo "=== All tests passed! ==="
