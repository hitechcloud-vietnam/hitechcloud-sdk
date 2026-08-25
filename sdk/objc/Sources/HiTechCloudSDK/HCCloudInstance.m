#import "HCCloudInstance.h"

@interface HCCloudInstance ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCCloudInstance

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)listVms:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms" params:params completion:completion];
}

- (void)createVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms" params:params completion:completion];
}

- (void)getVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}" params:params completion:completion];
}

- (void)destroyVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/service/{id}/vms/{vmid}" params:params completion:completion];
}

- (void)resizeVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/service/{id}/vms/{vmid}" params:params completion:completion];
}

- (void)stopVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/stop" params:params completion:completion];
}

- (void)startVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/start" params:params completion:completion];
}

- (void)rebootVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/reboot" params:params completion:completion];
}

- (void)resetPassword:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/resetpwd" params:params completion:completion];
}

- (void)rebuildVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/rebuild" params:params completion:completion];
}

- (void)listVmIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/ips" params:params completion:completion];
}

- (void)assignIp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/ips" params:params completion:completion];
}

- (void)listInterfaces:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/interfaces" params:params completion:completion];
}

- (void)getCpuUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/usage/cpu" params:params completion:completion];
}

- (void)getNetworkUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/usage/net" params:params completion:completion];
}

- (void)getDiskUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/usage/disk" params:params completion:completion];
}

- (void)listDisks:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/storage" params:params completion:completion];
}

- (void)resizeDisk:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/service/{id}/vms/{vmid}/storage/{diskid}" params:params completion:completion];
}

- (void)listIsoImages:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/images" params:params completion:completion];
}

- (void)addIsoImage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/images" params:params completion:completion];
}

- (void)listAvailableIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips" params:params completion:completion];
}

- (void)removeIp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/service/{id}/vms/{vmid}/ips/{ipid}" params:params completion:completion];
}

- (void)getRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/rdns" params:params completion:completion];
}

- (void)updateRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/rdns" params:params completion:completion];
}

- (void)rebuildNetwork:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/rebuild_network" params:params completion:completion];
}

@end
