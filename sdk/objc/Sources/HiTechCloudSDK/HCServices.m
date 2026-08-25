#import "HCServices.h"

@interface HCServices ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCServices

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service" params:params completion:completion];
}

- (void)get:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}" params:params completion:completion];
}

- (void)listMethods:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/methods" params:params completion:completion];
}

- (void)cancel:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/cancel" params:params completion:completion];
}

- (void)getLabel:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/label" params:params completion:completion];
}

- (void)setLabel:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/label" params:params completion:completion];
}

- (void)renew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/renew" params:params completion:completion];
}

- (void)listBillingCycles:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/cycle" params:params completion:completion];
}

- (void)changeBillingCycle:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/cycle" params:params completion:completion];
}

@end
