#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// SSL Certificates: list, order, download certificates
@interface HCSsl : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)get:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)download:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listAvailable:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)order:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listServerSoftware:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
