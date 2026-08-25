#import "HCCephS3.h"

@interface HCCephS3 ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCCephS3

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getConnectionInfo:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/s3" params:params completion:completion];
}

- (void)getCredentials:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/s3/credentials" params:params completion:completion];
}

- (void)getUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/s3/usage" params:params completion:completion];
}

- (void)getMetrics:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/s3/metrics" params:params completion:completion];
}

- (void)listBuckets:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/s3/buckets" params:params completion:completion];
}

- (void)createBucket:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/s3/buckets" params:params completion:completion];
}

- (void)deleteBucket:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/service/{id}/s3/buckets/{bucket}" params:params completion:completion];
}

- (void)listSubusers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/s3/subusers" params:params completion:completion];
}

- (void)createSubuser:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/s3/subusers" params:params completion:completion];
}

- (void)deleteSubuser:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/service/{id}/s3/subusers/{subuser}" params:params completion:completion];
}

- (void)rotateSecretKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/s3/key" params:params completion:completion];
}

@end
