#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters
@interface HCAiFactory : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)listTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)saveTemplate:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getProvisioningMode:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getJsonExamples:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getApiSchema:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listInstances:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listInstanceTypes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)restartInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getServiceInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)syncServiceInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)restartServiceInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateServiceInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listSshKeys:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)addSshKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getSshKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteSshKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)setDefaultSshKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listVolumes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createVolume:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listVolumeTypes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getVolume:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteVolume:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listFeaturedTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getTemplate:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateTemplate:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteTemplate:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listClusters:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createCluster:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listClusterTypes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getServiceCluster:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getCluster:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteCluster:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
