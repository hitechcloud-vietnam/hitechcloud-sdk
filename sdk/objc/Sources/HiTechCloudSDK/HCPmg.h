#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// HiTechCloudPMG: mail filtering configuration and management
@interface HCPmg : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getConfig:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)addDomain:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)setTransport:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getStats:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
