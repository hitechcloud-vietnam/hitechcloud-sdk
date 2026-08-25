#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Affiliate: affiliate program management
@interface HCAffiliate : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getSummary:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listCampaigns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listCommissions:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listPayouts:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listVouchers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listCommissionPlans:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
