#import "HCCloudService.h"

@interface HCCloudService ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCCloudService

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)shutdownVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/shutdown" params:params completion:completion];
}

- (void)resetVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/reset" params:params completion:completion];
}

- (void)changeHostname:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/hostname" params:params completion:completion];
}

- (void)listIpPools:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/ippool" params:params completion:completion];
}

- (void)allocateIp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/ippool/{pool}" params:params completion:completion];
}

- (void)listNetworks:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/networks" params:params completion:completion];
}

- (void)addInterface:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/interfaces" params:params completion:completion];
}

- (void)getInterface:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/interfaces/{iface}" params:params completion:completion];
}

- (void)updateInterface:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/service/{id}/vms/{vmid}/interfaces/{iface}" params:params completion:completion];
}

- (void)removeInterface:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/service/{id}/vms/{vmid}/interfaces/{iface}" params:params completion:completion];
}

@end
