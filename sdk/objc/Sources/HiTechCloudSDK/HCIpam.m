#import "HCIpam.h"

@interface HCIpam ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCIpam

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)listIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcipam/ips" params:params completion:completion];
}

- (void)listSubnets:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcipam/subnets" params:params completion:completion];
}

- (void)listRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcipam/rdns" params:params completion:completion];
}

- (void)setRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/htcipam/rdns" params:params completion:completion];
}

@end
