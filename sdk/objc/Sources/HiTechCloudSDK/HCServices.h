#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Services: list, details, cancel, renew, billing cycle
@interface HCServices : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)get:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listMethods:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)cancel:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getLabel:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)setLabel:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)renew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listBillingCycles:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)changeBillingCycle:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
