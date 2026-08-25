#import "HCEmailMfaV2.h"

@interface HCEmailMfaV2 ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCEmailMfaV2

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getMfaStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/email_mfa_v2/status/{user_type}/{user_id}" params:params completion:completion];
}

- (void)sendCode:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/email_mfa_v2/send" params:params completion:completion];
}

- (void)verifyCode:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/email_mfa_v2/verify" params:params completion:completion];
}

- (void)listActiveCodes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/email_mfa_v2/list/{user_type}/{user_id}" params:params completion:completion];
}

- (void)revokeAllCodes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/email_mfa_v2/revokeall" params:params completion:completion];
}

- (void)disableMfa:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/email_mfa_v2/disable" params:params completion:completion];
}

@end
