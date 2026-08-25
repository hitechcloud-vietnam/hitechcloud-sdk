#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Network Services: IP addresses and reverse DNS for services
@interface HCNetworkServices : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)listIps:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateRdns:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
