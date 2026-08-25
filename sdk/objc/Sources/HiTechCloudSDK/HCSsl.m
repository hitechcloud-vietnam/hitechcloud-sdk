#import "HCSsl.h"

@interface HCSsl ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCSsl

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/certificate" params:params completion:completion];
}

- (void)get:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/certificate/{id}" params:params completion:completion];
}

- (void)download:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/certificate/{id}/crt" params:params completion:completion];
}

- (void)listAvailable:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/certificate/order" params:params completion:completion];
}

- (void)order:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/certificate/order" params:params completion:completion];
}

- (void)listServerSoftware:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/certificate/order/{product_id}/software" params:params completion:completion];
}

@end
