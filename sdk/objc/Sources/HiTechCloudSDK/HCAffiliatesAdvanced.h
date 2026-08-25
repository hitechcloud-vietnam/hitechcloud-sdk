#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// AffiliatesAdvanced: advanced affiliate management with client_id
@interface HCAffiliatesAdvanced : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getInfo:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getStats:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getCommissionPlans:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getVouchers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getCommissions:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getReferrals:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getPayouts:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getCampaigns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getAuditLog:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)activate:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)setCommissionPlan:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createVoucher:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteVoucher:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)setLandingPage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
