#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces
@interface HCCloudService : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)shutdownVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)resetVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)changeHostname:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listIpPools:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)allocateIp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listNetworks:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)addInterface:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getInterface:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateInterface:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)removeInterface:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
