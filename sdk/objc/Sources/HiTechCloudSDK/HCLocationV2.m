#import "HCLocationV2.h"

@interface HCLocationV2 ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCLocationV2

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)listCountries:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/location_v2/countries" params:params completion:completion];
}

- (void)getStates:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/location_v2/{code}/state" params:params completion:completion];
}

- (void)getCities:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/location_v2/state/{id}/city" params:params completion:completion];
}

- (void)getCitiesByStateName:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/location_v2/state/city/{name}" params:params completion:completion];
}

@end
