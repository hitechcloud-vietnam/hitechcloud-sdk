#import "HCBilling.h"

@interface HCBilling ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCBilling

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getBalance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/balance" params:params completion:completion];
}

- (void)listInvoices:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/invoice" params:params completion:completion];
}

- (void)getInvoice:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/invoice/{id}" params:params completion:completion];
}

- (void)applyCredit:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/invoice/{id}/credit" params:params completion:completion];
}

- (void)getPaymentMethods:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/payment" params:params completion:completion];
}

- (void)getPaymentFees:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/payment/fees" params:params completion:completion];
}

@end
