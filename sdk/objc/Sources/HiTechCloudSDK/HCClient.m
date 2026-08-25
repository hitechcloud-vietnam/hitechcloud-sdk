#import "HCClient.h"

@implementation HCClient

- (instancetype)initWithBaseUrl:(nullable NSString *)baseUrl
                         token:(nullable NSString *)token
                        timeout:(NSTimeInterval)timeout
                     maxRetries:(NSInteger)maxRetries {
    self = [super init];
    if (self) {
        HCHTTPClient *httpClient = [[HCHTTPClient alloc] initWithBaseUrl:(baseUrl ?: @"https://api.hitechcloud.vn")
                                                                  token:token
                                                                 timeout:timeout
                                                              maxRetries:maxRetries];
    _affiliate = [[HCAffiliate alloc] initWithHttpClient:httpClient];
    _affiliatesAdvanced = [[HCAffiliatesAdvanced alloc] initWithHttpClient:httpClient];
    _aiFactory = [[HCAiFactory alloc] initWithHttpClient:httpClient];
    _auth = [[HCAuth alloc] initWithHttpClient:httpClient];
    _bareMetal = [[HCBareMetal alloc] initWithHttpClient:httpClient];
    _billing = [[HCBilling alloc] initWithHttpClient:httpClient];
    _cart = [[HCCart alloc] initWithHttpClient:httpClient];
    _cephS3 = [[HCCephS3 alloc] initWithHttpClient:httpClient];
    _cloudGpu = [[HCCloudGpu alloc] initWithHttpClient:httpClient];
    _cloudInstance = [[HCCloudInstance alloc] initWithHttpClient:httpClient];
    _cloudService = [[HCCloudService alloc] initWithHttpClient:httpClient];
    _cloudVm = [[HCCloudVm alloc] initWithHttpClient:httpClient];
    _collocation = [[HCCollocation alloc] initWithHttpClient:httpClient];
    _contacts = [[HCContacts alloc] initWithHttpClient:httpClient];
    _dns = [[HCDns alloc] initWithHttpClient:httpClient];
    _dnsManage = [[HCDnsManage alloc] initWithHttpClient:httpClient];
    _domains = [[HCDomains alloc] initWithHttpClient:httpClient];
    _emailMfaV2 = [[HCEmailMfaV2 alloc] initWithHttpClient:httpClient];
    _hosting = [[HCHosting alloc] initWithHttpClient:httpClient];
    _ipam = [[HCIpam alloc] initWithHttpClient:httpClient];
    _locationV2 = [[HCLocationV2 alloc] initWithHttpClient:httpClient];
    _networkServices = [[HCNetworkServices alloc] initWithHttpClient:httpClient];
    _notifications = [[HCNotifications alloc] initWithHttpClient:httpClient];
    _partner = [[HCPartner alloc] initWithHttpClient:httpClient];
    _passkeyV2 = [[HCPasskeyV2 alloc] initWithHttpClient:httpClient];
    _pmg = [[HCPmg alloc] initWithHttpClient:httpClient];
    _proxmox = [[HCProxmox alloc] initWithHttpClient:httpClient];
    _proxmoxBackup = [[HCProxmoxBackup alloc] initWithHttpClient:httpClient];
    _serviceStatus = [[HCServiceStatus alloc] initWithHttpClient:httpClient];
    _services = [[HCServices alloc] initWithHttpClient:httpClient];
    _ssl = [[HCSsl alloc] initWithHttpClient:httpClient];
    _support = [[HCSupport alloc] initWithHttpClient:httpClient];
    _urlShortener = [[HCUrlShortener alloc] initWithHttpClient:httpClient];
    _users = [[HCUsers alloc] initWithHttpClient:httpClient];
    _vcloudstack = [[HCVcloudstack alloc] initWithHttpClient:httpClient];
    _virtualizor = [[HCVirtualizor alloc] initWithHttpClient:httpClient];
    _vneidekyc = [[HCVneidekyc alloc] initWithHttpClient:httpClient];
    _willExpired = [[HCWillExpired alloc] initWithHttpClient:httpClient];
    }
    return self;
}

@end
