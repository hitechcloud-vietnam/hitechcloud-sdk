#import "HCDns.h"

@interface HCDns ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCDns

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/dns" params:params completion:completion];
}

- (void)listForService:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{service_id}/dns" params:params completion:completion];
}

- (void)addZone:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{service_id}/dns" params:params completion:completion];
}

- (void)getZone:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{service_id}/dns/{zone_id}" params:params completion:completion];
}

- (void)deleteZone:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/service/{service_id}/dns/{zone_id}" params:params completion:completion];
}

- (void)addRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{service_id}/dns/{zone_id}/records" params:params completion:completion];
}

- (void)editRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/service/{service_id}/dns/{zone_id}/records/{record_id}" params:params completion:completion];
}

- (void)deleteRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/service/{service_id}/dns/{zone_id}/records/{record_id}" params:params completion:completion];
}

@end
