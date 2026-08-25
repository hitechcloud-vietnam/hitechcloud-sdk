#import "HCProxmox.h"

@interface HCProxmox ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCProxmox

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcpve/status" params:params completion:completion];
}

- (void)powerAction:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/htcpve/power" params:params completion:completion];
}

- (void)listVms:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcpve/vms" params:params completion:completion];
}

- (void)listIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcpve/ips" params:params completion:completion];
}

- (void)setRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/htcpve/rdns" params:params completion:completion];
}

- (void)listBackups:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcpve/backups" params:params completion:completion];
}

- (void)createBackup:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/htcpve/backups" params:params completion:completion];
}

- (void)listSnapshots:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcpve/snapshots" params:params completion:completion];
}

- (void)createSnapshot:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/htcpve/snapshots" params:params completion:completion];
}

- (void)getBandwidthUsage:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/htcpve/usage" params:params completion:completion];
}

@end
