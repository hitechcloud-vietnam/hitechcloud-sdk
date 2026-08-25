#import "HCCart.h"

@interface HCCart ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCCart

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)listCategories:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/category" params:params completion:completion];
}

- (void)listProducts:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/category/{category_id}/product" params:params completion:completion];
}

- (void)getProductConfig:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/order/{product_id}" params:params completion:completion];
}

- (void)orderProduct:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/order/{product_id}" params:params completion:completion];
}

- (void)orderMultiple:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/order" params:params completion:completion];
}

- (void)getQuote:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/quote" params:params completion:completion];
}

@end
