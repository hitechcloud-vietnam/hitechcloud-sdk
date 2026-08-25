#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Cloud GPU: GPU instance management
@interface HCCloudGpu : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)reboot:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)stop:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)start:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getFirewallRules:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)addFirewallRules:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)removeFirewallRule:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
