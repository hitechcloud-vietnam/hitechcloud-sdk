#import "HCCloudVm.h"

@interface HCCloudVm ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCCloudVm

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getUpgradeOptions:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/upgrade" params:params completion:completion];
}

- (void)requestUpgrade:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/upgrade" params:params completion:completion];
}

- (void)getResources:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/resources" params:params completion:completion];
}

- (void)listRebuildTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/templates/{vmid}" params:params completion:completion];
}

- (void)getMemoryUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/usage/memory" params:params completion:completion];
}

- (void)listIsoImages:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/images" params:params completion:completion];
}

- (void)mountIso:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/images" params:params completion:completion];
}

- (void)setBootOrder:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/boot" params:params completion:completion];
}

- (void)enablePxe:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/tuntap" params:params completion:completion];
}

@end
