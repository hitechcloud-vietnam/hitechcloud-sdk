#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Collocation Services: PDU port management
@interface HCCollocation : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)listPduPorts:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getPduPortState:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)setPduPortStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
