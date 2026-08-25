#import "HCAffiliatesAdvanced.h"

@interface HCAffiliatesAdvanced ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCAffiliatesAdvanced

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getInfo:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates_adv/{client_id}/info" params:params completion:completion];
}

- (void)getStats:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates_adv/{client_id}/stats" params:params completion:completion];
}

- (void)getCommissionPlans:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates_adv/{client_id}/commission-plans" params:params completion:completion];
}

- (void)getVouchers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates_adv/{client_id}/vouchers" params:params completion:completion];
}

- (void)getCommissions:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates_adv/{client_id}/commissions" params:params completion:completion];
}

- (void)getReferrals:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates_adv/{client_id}/referrals" params:params completion:completion];
}

- (void)getPayouts:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates_adv/{client_id}/payouts" params:params completion:completion];
}

- (void)getCampaigns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates_adv/{client_id}/campaigns" params:params completion:completion];
}

- (void)getAuditLog:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/affiliates_adv/{client_id}/audit" params:params completion:completion];
}

- (void)activate:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/affiliates_adv/{client_id}/activate" params:params completion:completion];
}

- (void)setCommissionPlan:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/affiliates_adv/{client_id}/commission-plan/{commission_id}" params:params completion:completion];
}

- (void)createVoucher:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/affiliates_adv/{client_id}/vouchers/{plan_id}" params:params completion:completion];
}

- (void)deleteVoucher:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/affiliates_adv/{client_id}/vouchers/{voucher_id}" params:params completion:completion];
}

- (void)setLandingPage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/affiliates_adv/{client_id}/landing-page" params:params completion:completion];
}

@end
