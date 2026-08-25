#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// DNS: zones and records management for services
@interface HCDns : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listForService:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)addZone:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getZone:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteZone:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)addRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)editRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
