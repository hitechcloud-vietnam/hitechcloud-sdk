package vn.hitechcloud.sdk;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class HiTechCloudClientTest {
    @Test
    void testClientCreation() {
        HiTechCloudClient client = new HiTechCloudClient("test_token");
        assertNotNull(client);
    }

    @Test
    void testClientWithCustomUrl() {
        HiTechCloudClient client = new HiTechCloudClient("test_token", "https://custom.api.com", 30, 3);
        assertNotNull(client);
    }

    @Test
    void testExceptionHierarchy() {
        assertTrue(HiTechCloudException.class.isAssignableFrom(AuthenticationException.class));
        assertTrue(HiTechCloudException.class.isAssignableFrom(NotFoundException.class));
    }
}
