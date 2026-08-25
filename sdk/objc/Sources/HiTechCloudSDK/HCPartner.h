#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates
@interface HCPartner : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getPartnerInfo:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)apply:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listTiers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getPricing:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listCustomers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getEarnings:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getWallet:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listPayouts:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)requestPayout:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listLeads:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createLead:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getReferral:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getRates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
