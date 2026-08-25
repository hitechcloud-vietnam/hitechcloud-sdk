#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Virtualizor: VPS management via Virtualizor panel
@interface HCVirtualizor : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)suspend:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)unsuspend:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listRebuildTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)changeSshKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
