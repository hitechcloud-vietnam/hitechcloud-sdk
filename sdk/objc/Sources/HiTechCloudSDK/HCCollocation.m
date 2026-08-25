#import "HCCollocation.h"

@interface HCCollocation ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCCollocation

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)listPduPorts:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/pdu" params:params completion:completion];
}

- (void)getPduPortState:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/pdu/{port}" params:params completion:completion];
}

- (void)setPduPortStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/pdu/{port}" params:params completion:completion];
}

@end
