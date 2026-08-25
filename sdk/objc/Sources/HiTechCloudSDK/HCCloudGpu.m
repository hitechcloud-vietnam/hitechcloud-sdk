#import "HCCloudGpu.h"

@interface HCCloudGpu ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCCloudGpu

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)reboot:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/service/{id}/vms/reboot" params:params completion:completion];
}

- (void)stop:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/service/{id}/vms/stop" params:params completion:completion];
}

- (void)start:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/service/{id}/vms/start" params:params completion:completion];
}

- (void)getFirewallRules:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/firewall" params:params completion:completion];
}

- (void)addFirewallRules:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/firewall" params:params completion:completion];
}

- (void)removeFirewallRule:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/service/{id}/vms/firewall/{position}" params:params completion:completion];
}

@end
