#import "HCNotifications.h"

@interface HCNotifications ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCNotifications

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/notifications" params:params completion:completion];
}

- (void)listNew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/notifications/new" params:params completion:completion];
}

- (void)acknowledge:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/notifications/{id}/ack" params:params completion:completion];
}

@end
