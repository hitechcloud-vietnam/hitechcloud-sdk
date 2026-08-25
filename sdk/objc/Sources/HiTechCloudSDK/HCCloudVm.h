#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE
@interface HCCloudVm : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getUpgradeOptions:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)requestUpgrade:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getResources:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listRebuildTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getMemoryUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listIsoImages:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)mountIso:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)setBootOrder:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)enablePxe:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
