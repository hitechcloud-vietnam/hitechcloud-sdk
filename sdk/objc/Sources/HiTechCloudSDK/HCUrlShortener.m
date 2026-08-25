#import "HCUrlShortener.h"

@interface HCUrlShortener ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCUrlShortener

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)shorten:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/url-shortener/shorten" params:params completion:completion];
}

- (void)listLinks:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/url-shortener/links" params:params completion:completion];
}

- (void)getConfig:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/url-shortener/config" params:params completion:completion];
}

- (void)getStats:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/url-shortener/stats" params:params completion:completion];
}

- (void)getLink:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/url-shortener/links/{id}" params:params completion:completion];
}

- (void)deleteLink:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient delete:@"/api/url-shortener/links/{id}" params:params completion:completion];
}

@end
