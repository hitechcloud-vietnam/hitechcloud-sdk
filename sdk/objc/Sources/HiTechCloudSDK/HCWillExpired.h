#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// WillExpired: expiring services and domains management
@interface HCWillExpired : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)listExpiring:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getSummary:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getConfig:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listOpenInvoices:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listRequests:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)exportAll:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getItem:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)renew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getAutorenew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)setAutorenew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
