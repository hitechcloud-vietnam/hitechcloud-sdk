# Getting Started

## Installation

Choose your language and install the SDK:

### Python
```bash
pip install hitechcloud
```

### Node.js
```bash
npm install @hitechcloud/sdk
```

### PHP
```bash
composer require hitechcloud/sdk
```

### Go
```bash
go get github.com/hitechcloud-vietnam/hitechcloud-sdk/sdk/go
```

### Ruby
```bash
gem install hitechcloud
```

### Java
```xml
<dependency>
    <groupId>vn.hitechcloud</groupId>
    <artifactId>sdk</artifactId>
    <version>1.0.0</version>
</dependency>
```

### C#
```bash
dotnet add package HiTechCloud.SDK
```

## Authentication

All API calls require authentication via API key or Bearer token.

```python
from hitechcloud import HiTechCloud

client = HiTechCloud(api_key="your-api-key")
# or
client = HiTechCloud(token="your-bearer-token")
```

See [Authentication](authentication.md) for details.
