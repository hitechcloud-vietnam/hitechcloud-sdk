#import "HCAffiliate.h"

@interface HCAffiliate ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCAffiliate

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getSummary:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates/summary" params:params completion:completion];
}

- (void)listCampaigns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates/campaigns" params:params completion:completion];
}

- (void)listCommissions:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates/commissions" params:params completion:completion];
}

- (void)listPayouts:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates/payouts" params:params completion:completion];
}

- (void)listVouchers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates/vouchers" params:params completion:completion];
}

- (void)listCommissionPlans:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates/commissionplans" params:params completion:completion];
}

@end
