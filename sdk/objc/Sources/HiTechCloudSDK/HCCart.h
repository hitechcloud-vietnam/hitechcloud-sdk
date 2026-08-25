#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Cart: shopping cart management
@interface HCCart : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)listCategories:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listProducts:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getProductConfig:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)orderProduct:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)orderMultiple:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getQuote:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
