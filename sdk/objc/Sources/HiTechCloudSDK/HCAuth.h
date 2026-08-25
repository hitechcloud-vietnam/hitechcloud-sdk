#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Account Authentication: login, logout, token refresh, signup, password reset
@interface HCAuth : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)login:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)logout:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)refreshToken:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)revokeToken:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)passwordReset:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)signup:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
