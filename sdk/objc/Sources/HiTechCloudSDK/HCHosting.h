#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Hosting Services: reinstall, status, bandwidth, reset
@interface HCHosting : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getReinstallDetails:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)reinstall:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getBandwidthGraphs:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getBandwidthUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)reset:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
