#import "HCSupport.h"

@interface HCSupport ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCSupport

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)listTickets:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/tickets" params:params completion:completion];
}

- (void)createTicket:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/tickets" params:params completion:completion];
}

- (void)getTicket:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/tickets/{number}" params:params completion:completion];
}

- (void)reply:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/tickets/{number}" params:params completion:completion];
}

- (void)getAttachment:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/ticket/attachment/{file}" params:params completion:completion];
}

- (void)reopen:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/tickets/{number}/open" params:params completion:completion];
}

- (void)close:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/tickets/{number}/close" params:params completion:completion];
}

- (void)listDepartments:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/ticket/departments" params:params completion:completion];
}

- (void)listNews:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/news" params:params completion:completion];
}

- (void)getNews:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/news/{news_id}" params:params completion:completion];
}

- (void)listKnowledgebaseCategories:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/knowledgebase" params:params completion:completion];
}

- (void)getKnowledgebaseCategory:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/knowledgebase/{category_id}" params:params completion:completion];
}

- (void)getKnowledgebaseArticle:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/knowledgebase/article/{article_id}" params:params completion:completion];
}

@end
