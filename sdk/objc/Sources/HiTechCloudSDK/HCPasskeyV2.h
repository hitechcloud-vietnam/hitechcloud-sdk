#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// PasskeyV2: passkey-based MFA management
@interface HCPasskeyV2 : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getMfaStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listCredentials:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteCredential:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)sendEmailOtp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)verifyEmailOtp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)disableMfa:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
