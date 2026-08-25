#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// HiTechCloudIPAM: IP addresses, subnets, reverse DNS
@interface HCIpam : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)listIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listSubnets:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)setRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
