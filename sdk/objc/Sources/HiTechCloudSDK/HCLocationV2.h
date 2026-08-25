#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// LocationV2: countries, states, cities lookup
@interface HCLocationV2 : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)listCountries:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getStates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getCities:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getCitiesByStateName:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
