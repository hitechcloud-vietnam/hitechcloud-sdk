#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// URL Shortener: shorten URLs, manage links, stats
@interface HCUrlShortener : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)shorten:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listLinks:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getConfig:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getStats:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getLink:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteLink:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
