#import "HCHosting.h"

@interface HCHosting ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCHosting

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getReinstallDetails:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/reinstall" params:params completion:completion];
}

- (void)reinstall:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/reinstall" params:params completion:completion];
}

- (void)getStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/status" params:params completion:completion];
}

- (void)getBandwidthGraphs:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/bandwidth-graphs" params:params completion:completion];
}

- (void)getBandwidthUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/bandwidth" params:params completion:completion];
}

- (void)reset:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/reset" params:params completion:completion];
}

@end
