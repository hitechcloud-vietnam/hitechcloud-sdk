#import "HCAiFactory.h"

@interface HCAiFactory ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCAiFactory

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)listTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/templates" params:params completion:completion];
}

- (void)saveTemplate:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/templates" params:params completion:completion];
}

- (void)getProvisioningMode:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/hitechcloud/mode" params:params completion:completion];
}

- (void)getJsonExamples:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/hitechcloud/examples" params:params completion:completion];
}

- (void)getApiSchema:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/hitechcloud/schema" params:params completion:completion];
}

- (void)listInstances:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/instances" params:params completion:completion];
}

- (void)createInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/instances" params:params completion:completion];
}

- (void)listInstanceTypes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/instances/types" params:params completion:completion];
}

- (void)getInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/instances/{instance_id}" params:params completion:completion];
}

- (void)updateInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/instances/{instance_id}/update" params:params completion:completion];
}

- (void)restartInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/instances/{instance_id}/restart" params:params completion:completion];
}

- (void)deleteInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/instances/{instance_id}/delete" params:params completion:completion];
}

- (void)getServiceInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/instance" params:params completion:completion];
}

- (void)syncServiceInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/instance/sync" params:params completion:completion];
}

- (void)restartServiceInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/instance/restart" params:params completion:completion];
}

- (void)updateServiceInstance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/instance/update" params:params completion:completion];
}

- (void)listSshKeys:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/sshkeys" params:params completion:completion];
}

- (void)addSshKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/sshkeys" params:params completion:completion];
}

- (void)getSshKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/sshkeys/{key_id}" params:params completion:completion];
}

- (void)deleteSshKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/sshkeys/{key_id}/delete" params:params completion:completion];
}

- (void)setDefaultSshKey:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/sshkeys/{key_id}/setdefault" params:params completion:completion];
}

- (void)listVolumes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/volumes" params:params completion:completion];
}

- (void)createVolume:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/volumes" params:params completion:completion];
}

- (void)listVolumeTypes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/volumes/types" params:params completion:completion];
}

- (void)getVolume:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/volumes/{volume_id}" params:params completion:completion];
}

- (void)deleteVolume:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/volumes/{volume_id}/delete" params:params completion:completion];
}

- (void)listFeaturedTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/templates/featured" params:params completion:completion];
}

- (void)getTemplate:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/templates/{template_id}" params:params completion:completion];
}

- (void)updateTemplate:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/templates/{template_id}/update" params:params completion:completion];
}

- (void)deleteTemplate:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/templates/{template_id}/delete" params:params completion:completion];
}

- (void)listClusters:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/clusters" params:params completion:completion];
}

- (void)createCluster:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/clusters" params:params completion:completion];
}

- (void)listClusterTypes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/clusters/types" params:params completion:completion];
}

- (void)getServiceCluster:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/cluster" params:params completion:completion];
}

- (void)getCluster:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/clusters/{cluster_id}" params:params completion:completion];
}

- (void)deleteCluster:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/clusters/{cluster_id}/delete" params:params completion:completion];
}

@end
