#import "HCUsers.h"

@interface HCUsers ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCUsers

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)getDetails:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/details" params:params completion:completion];
}

- (void)updateDetails:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/details" params:params completion:completion];
}

- (void)getLogs:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/logs" params:params completion:completion];
}

@end
