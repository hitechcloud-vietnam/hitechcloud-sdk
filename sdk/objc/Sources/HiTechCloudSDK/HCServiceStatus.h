#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Service Status: list and manage service statuses
@interface HCServiceStatus : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)get:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
