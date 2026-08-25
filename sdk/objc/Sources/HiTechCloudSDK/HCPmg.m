#import "HCPmg.h"

@interface HCPmg ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCPmg

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getConfig:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcpmg/config" params:params completion:completion];
}

- (void)addDomain:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/htcpmg/domains" params:params completion:completion];
}

- (void)setTransport:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/htcpmg/transport" params:params completion:completion];
}

- (void)getStats:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcpmg/stats" params:params completion:completion];
}

@end
