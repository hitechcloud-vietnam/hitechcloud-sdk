# Java SDK Guide

## Installation

```java
<dependency>
    <groupId>vn.hitechcloud</groupId>
    <artifactId>sdk</artifactId>
    <version>1.0.0</version>
</dependency>
```

## Initialization

```java
import vn.hitechcloud.HiTechCloud;

HiTechCloud client = new HiTechCloud("your-api-key");
```

## Basic Usage

```java
// List all services
var services = client.services().listServices();
System.out.println(services);

// Get a specific service
var service = client.services().getService(123);
System.out.println(service);

// Power operations
client.services().startService(123);
client.services().stopService(123);
client.services().rebootService(123);
```

## Testing

```java
import org.junit.Test;
import static org.junit.Assert.*;
import vn.hitechcloud.HiTechCloud;

public class HiTechCloudTest {
    @Test
    public void testClientInit() {
        HiTechCloud client = new HiTechCloud("test-key");
        assertNotNull(client);
    }
}
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `HITECHCLOUD_API_KEY` | Your API key |
| `HITECHCLOUD_BASE_URL` | Custom base URL (default: `https://docs.hitechcloud.vn`) |

## More Examples

See the [`examples/java/`](../../examples/java/) directory for complete examples.
