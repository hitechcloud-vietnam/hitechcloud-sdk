#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token
@interface HCProxmoxBackup : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getConnectionInfo:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getCredentials:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getMetrics:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listSnapshots:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listGroups:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)changePassword:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)rotateToken:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)revokeToken:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
