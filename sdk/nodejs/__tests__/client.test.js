"use strict";

const { HiTechCloud } = require("../src/client");
const {
  HiTechCloudError,
  AuthenticationError,
  NotFoundError,
  RateLimitError,
} = require("../src/exceptions");

describe("HiTechCloud SDK", () => {
  test("should create client with token", () => {
    const client = new HiTechCloud({ token: "test_token" });
    expect(client).toBeDefined();
    expect(client.services).toBeDefined();
    expect(client.domains).toBeDefined();
    expect(client.dns).toBeDefined();
    expect(client.ssl).toBeDefined();
    expect(client.billing).toBeDefined();
    expect(client.support).toBeDefined();
  });

  test("should create client with default URL", () => {
    const client = new HiTechCloud({ token: "tok" });
    expect(client._http.baseUrl).toBe("https://api.hitechcloud.vn");
  });

  test("should create client with custom URL", () => {
    const client = new HiTechCloud({
      baseUrl: "https://custom.api.com",
      token: "tok",
    });
    expect(client._http.baseUrl).toBe("https://custom.api.com");
  });

  test("should have all resource groups", () => {
    const client = new HiTechCloud({ token: "tok" });
    const resources = [
      "auth", "users", "services", "domains", "dnsManage", "dns",
      "ssl", "billing", "support", "contacts", "cart", "notifications",
      "affiliate", "cloudGpu", "virtualizor", "cloudService",
      "networkServices", "serviceStatus", "bareMetal", "collocation",
      "vcloudstack", "hosting", "locationV2", "cloudInstance",
      "cloudVm", "affiliatesAdvanced", "aiFactory", "passkeyV2",
      "emailMfaV2", "vneidekyc", "willExpired", "urlShortener",
      "proxmoxBackup", "cephS3", "pmg", "proxmox", "ipam", "partner",
    ];
    for (const r of resources) {
      expect(client[r]).toBeDefined();
    }
  });

  test("should export exception classes", () => {
    expect(HiTechCloudError).toBeDefined();
    expect(AuthenticationError).toBeDefined();
    expect(NotFoundError).toBeDefined();
    expect(RateLimitError).toBeDefined();
  });
});
