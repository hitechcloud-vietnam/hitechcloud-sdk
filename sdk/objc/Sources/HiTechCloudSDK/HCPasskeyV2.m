#import "HCPasskeyV2.h"

@interface HCPasskeyV2 ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCPasskeyV2

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getMfaStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/passkeyv2/status/{user_type}/{user_id}" params:params completion:completion];
}

- (void)listCredentials:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/passkeyv2/credentials/{user_type}/{user_id}" params:params completion:completion];
}

- (void)deleteCredential:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/passkeyv2/credentials/{user_type}/{user_id}/delete" params:params completion:completion];
}

- (void)sendEmailOtp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/passkeyv2/email_otp/send" params:params completion:completion];
}

- (void)verifyEmailOtp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/passkeyv2/email_otp/verify" params:params completion:completion];
}

- (void)disableMfa:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/passkeyv2/disable/{user_type}/{user_id}" params:params completion:completion];
}

@end
