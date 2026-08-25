#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Notifications: manage notification preferences
@interface HCNotifications : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listNew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)acknowledge:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
