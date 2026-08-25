#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth
@interface HCProxmox : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)powerAction:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listVms:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)setRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listBackups:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createBackup:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listSnapshots:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createSnapshot:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getBandwidthUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
