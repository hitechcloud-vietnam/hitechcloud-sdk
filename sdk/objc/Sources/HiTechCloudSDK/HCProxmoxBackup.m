#import "HCProxmoxBackup.h"

@interface HCProxmoxBackup ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCProxmoxBackup

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getConnectionInfo:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/pbs" params:params completion:completion];
}

- (void)getCredentials:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/pbs/credentials" params:params completion:completion];
}

- (void)getUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/pbs/usage" params:params completion:completion];
}

- (void)getMetrics:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/pbs/metrics" params:params completion:completion];
}

- (void)listSnapshots:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/pbs/snapshots" params:params completion:completion];
}

- (void)listGroups:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/pbs/groups" params:params completion:completion];
}

- (void)changePassword:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/pbs/password" params:params completion:completion];
}

- (void)rotateToken:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/pbs/token" params:params completion:completion];
}

- (void)revokeToken:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/service/{id}/pbs/token" params:params completion:completion];
}

@end
