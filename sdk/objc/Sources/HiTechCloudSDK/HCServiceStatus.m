#import "HCServiceStatus.h"

@interface HCServiceStatus ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCServiceStatus

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/statuses" params:params completion:completion];
}

- (void)get:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/statuses/{id}" params:params completion:completion];
}

@end
