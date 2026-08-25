#import "HCBareMetal.h"

@interface HCBareMetal ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCBareMetal

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)listReinstallTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/reinstall/templates" params:params completion:completion];
}

- (void)cancelDiagnostics:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/diag/cancel" params:params completion:completion];
}

- (void)listDiagnosticsTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/diag/templates" params:params completion:completion];
}

- (void)getDiagnosticsStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/diag" params:params completion:completion];
}

- (void)runDiagnostics:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/diag" params:params completion:completion];
}

- (void)listRescueTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/rescue/templates" params:params completion:completion];
}

- (void)getRescueStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/rescue" params:params completion:completion];
}

- (void)rescue:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/rescue" params:params completion:completion];
}

- (void)cancelRescue:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/rescue/cancel" params:params completion:completion];
}

- (void)getServerInfo:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/info" params:params completion:completion];
}

- (void)updateHostname:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/hostname" params:params completion:completion];
}

- (void)listIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/ips" params:params completion:completion];
}

- (void)addIp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/ips" params:params completion:completion];
}

- (void)listVlans:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/vlans" params:params completion:completion];
}

- (void)getIpDetails:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/ips/{ip}" params:params completion:completion];
}

- (void)editIp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/service/{id}/ips/{ip}" params:params completion:completion];
}

- (void)getReinstallDetails:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/reinstall" params:params completion:completion];
}

- (void)reinstall:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/reinstall" params:params completion:completion];
}

- (void)getStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/service/{id}/status" params:params completion:completion];
}

- (void)powerAction:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/service/{id}/power/{action}" params:params completion:completion];
}

- (void)listServersInStock:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/serverstock" params:params completion:completion];
}

@end
