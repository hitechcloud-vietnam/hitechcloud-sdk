#import "HCVcloudstack.h"

@interface HCVcloudstack ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCVcloudstack

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)rescueVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/rescue" params:params completion:completion];
}

- (void)unrescueVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/unrescue" params:params completion:completion];
}

- (void)getConsole:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/console" params:params completion:completion];
}

- (void)getUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/usage" params:params completion:completion];
}

@end
