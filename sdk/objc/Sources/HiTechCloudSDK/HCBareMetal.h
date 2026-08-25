#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power
@interface HCBareMetal : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)listReinstallTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)cancelDiagnostics:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listDiagnosticsTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getDiagnosticsStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)runDiagnostics:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listRescueTemplates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getRescueStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)rescue:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)cancelRescue:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getServerInfo:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateHostname:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)addIp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listVlans:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getIpDetails:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)editIp:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getReinstallDetails:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)reinstall:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)powerAction:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listServersInStock:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
