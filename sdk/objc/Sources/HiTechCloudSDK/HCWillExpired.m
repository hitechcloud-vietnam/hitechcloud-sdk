#import "HCWillExpired.h"

@interface HCWillExpired ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCWillExpired

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)listExpiring:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/willexpired" params:params completion:completion];
}

- (void)getSummary:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/willexpired/summary" params:params completion:completion];
}

- (void)getConfig:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/willexpired/config" params:params completion:completion];
}

- (void)listOpenInvoices:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/willexpired/invoices" params:params completion:completion];
}

- (void)listRequests:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/willexpired/requests" params:params completion:completion];
}

- (void)exportAll:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/willexpired/export" params:params completion:completion];
}

- (void)getItem:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/willexpired/{type}/{id}" params:params completion:completion];
}

- (void)renew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/willexpired/{type}/{id}/renew" params:params completion:completion];
}

- (void)getAutorenew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/willexpired/{type}/{id}/autorenew" params:params completion:completion];
}

- (void)setAutorenew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/willexpired/{type}/{id}/autorenew" params:params completion:completion];
}

@end
