#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation
@interface HCCephS3 : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getConnectionInfo:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getCredentials:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getMetrics:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listBuckets:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createBucket:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteBucket:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listSubusers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createSubuser:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteSubuser:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)rotateSecretKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
