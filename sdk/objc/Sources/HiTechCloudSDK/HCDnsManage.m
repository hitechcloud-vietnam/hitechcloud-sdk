#import "HCDnsManage.h"

@interface HCDnsManage ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCDnsManage

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getRecords:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/dns" params:params completion:completion];
}

- (void)createRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/domain/{id}/dns" params:params completion:completion];
}

- (void)updateRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/domain/{id}/dns/{index}" params:params completion:completion];
}

- (void)deleteRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/domain/{id}/dns/{index}" params:params completion:completion];
}

- (void)getRecordTypes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/dns/types" params:params completion:completion];
}

- (void)getDnssecFlags:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/dnssec/flags" params:params completion:completion];
}

- (void)getDnssecRecords:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/dnssec" params:params completion:completion];
}

- (void)createDnssecRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/domain/{id}/dnssec" params:params completion:completion];
}

- (void)deleteDnssecRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/domain/{id}/dnssec" params:params completion:completion];
}

- (void)registerNameserver:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/domain/{id}/reg" params:params completion:completion];
}

@end
