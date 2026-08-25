#import "HCContacts.h"

@interface HCContacts ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCContacts

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/contact" params:params completion:completion];
}

- (void)create:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/contact" params:params completion:completion];
}

- (void)getPrivileges:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/contact/privileges" params:params completion:completion];
}

- (void)get:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/contact/{id}" params:params completion:completion];
}

- (void)update:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/contact/{id}" params:params completion:completion];
}

@end
