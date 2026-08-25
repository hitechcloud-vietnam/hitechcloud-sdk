#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Cloud Instance: full VM lifecycle management
@interface HCCloudInstance : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)listVms:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)destroyVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)resizeVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)stopVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)startVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)rebootVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)resetPassword:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)rebuildVm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listVmIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)assignIp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listInterfaces:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getCpuUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getNetworkUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getDiskUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listDisks:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)resizeDisk:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listIsoImages:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)addIsoImage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listAvailableIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)removeIp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)rebuildNetwork:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
