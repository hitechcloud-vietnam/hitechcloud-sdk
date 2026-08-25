#import "HCVirtualizor.h"

@interface HCVirtualizor ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCVirtualizor

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)suspend:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/suspend" params:params completion:completion];
}

- (void)unsuspend:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/unsuspend" params:params completion:completion];
}

- (void)listRebuildTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vms/{vmid}/rebuild" params:params completion:completion];
}

- (void)changeSshKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/vms/{vmid}/addsshkey" params:params completion:completion];
}

@end
