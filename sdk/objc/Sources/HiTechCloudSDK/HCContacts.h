#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Contacts: manage account contacts
@interface HCContacts : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)create:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getPrivileges:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)get:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)update:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
