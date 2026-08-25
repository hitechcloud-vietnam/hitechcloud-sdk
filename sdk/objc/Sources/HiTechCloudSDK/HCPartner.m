#import "HCPartner.h"

@interface HCPartner ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCPartner

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getPartnerInfo:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/partner" params:params completion:completion];
}

- (void)apply:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/partner/apply" params:params completion:completion];
}

- (void)listTiers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/partner/tiers" params:params completion:completion];
}

- (void)getPricing:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/partner/pricing" params:params completion:completion];
}

- (void)listCustomers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/partner/customers" params:params completion:completion];
}

- (void)getEarnings:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/partner/earnings" params:params completion:completion];
}

- (void)getWallet:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/partner/wallet" params:params completion:completion];
}

- (void)listPayouts:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/partner/payouts" params:params completion:completion];
}

- (void)requestPayout:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/partner/payouts" params:params completion:completion];
}

- (void)listLeads:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/partner/leads" params:params completion:completion];
}

- (void)createLead:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/partner/leads" params:params completion:completion];
}

- (void)getReferral:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/partner/referral" params:params completion:completion];
}

- (void)getRates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/partner/rates" params:params completion:completion];
}

@end
