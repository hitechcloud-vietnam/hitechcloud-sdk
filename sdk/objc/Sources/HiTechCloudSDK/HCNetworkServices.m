#import "HCNetworkServices.h"

@interface HCNetworkServices ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCNetworkServices

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)listIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/ip" params:params completion:completion];
}

- (void)getRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/rdns" params:params completion:completion];
}

- (void)updateRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/rdns" params:params completion:completion];
}

@end
