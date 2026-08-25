using Xunit;
using HiTechCloud.SDK;

namespace HiTechCloud.SDK.Tests
{
    public class HiTechCloudClientTests
    {
        [Fact]
        public void ClientCreation_WithToken_ShouldSucceed()
        {
            var client = new HiTechCloudClient("test_token");
            Assert.NotNull(client);
        }

        [Fact]
        public void ClientCreation_WithCustomUrl_ShouldSucceed()
        {
            var client = new HiTechCloudClient("test_token", "https://custom.api.com");
            Assert.NotNull(client);
        }

        [Fact]
        public void Client_ShouldHaveAllResources()
        {
            var client = new HiTechCloudClient("test_token");
            Assert.NotNull(client.Services);
            Assert.NotNull(client.Domains);
            Assert.NotNull(client.Dns);
            Assert.NotNull(client.Ssl);
            Assert.NotNull(client.Billing);
            Assert.NotNull(client.Support);
        }
    }
}
