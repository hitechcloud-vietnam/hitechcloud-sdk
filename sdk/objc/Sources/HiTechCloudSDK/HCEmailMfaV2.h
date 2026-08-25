#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// EmailMfaV2: email-based MFA management
@interface HCEmailMfaV2 : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getMfaStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)sendCode:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)verifyCode:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listActiveCodes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)revokeAllCodes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)disableMfa:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
