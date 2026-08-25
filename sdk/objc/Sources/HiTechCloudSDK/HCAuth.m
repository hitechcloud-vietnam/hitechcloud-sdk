#import "HCAuth.h"

@interface HCAuth ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCAuth

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)login:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/login" params:params completion:completion];
}

- (void)logout:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/logout" params:params completion:completion];
}

- (void)refreshToken:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/token" params:params completion:completion];
}

- (void)revokeToken:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/revoke" params:params completion:completion];
}

- (void)passwordReset:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/passwordreset" params:params completion:completion];
}

- (void)signup:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/signup" params:params completion:completion];
}

@end
