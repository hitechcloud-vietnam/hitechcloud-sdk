#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// User Profile: view/update account details, logs
@interface HCUsers : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getDetails:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateDetails:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getLogs:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
