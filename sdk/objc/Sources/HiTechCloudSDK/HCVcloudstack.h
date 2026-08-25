#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// vCloudStack Public Cloud: rescue, unrescue, console, usage
@interface HCVcloudstack : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)rescueVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)unrescueVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getConsole:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
