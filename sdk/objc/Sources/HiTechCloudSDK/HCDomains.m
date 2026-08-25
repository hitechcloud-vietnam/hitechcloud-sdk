#import "HCDomains.h"

@interface HCDomains ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCDomains

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain" params:params completion:completion];
}

- (void)get:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}" params:params completion:completion];
}

- (void)getByName:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/name/{name}" params:params completion:completion];
}

- (void)whois:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/whois/{domain}" params:params completion:completion];
}

- (void)whoisLookup:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/whoislookup/{domain}" params:params completion:completion];
}

- (void)checkAvailability:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/availability/{domain}" params:params completion:completion];
}

- (void)getNameservers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/ns" params:params completion:completion];
}

- (void)updateNameservers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/domain/{id}/ns" params:params completion:completion];
}

- (void)getEppCode:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/epp" params:params completion:completion];
}

- (void)sync:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/sync" params:params completion:completion];
}

- (void)getLock:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/reglock" params:params completion:completion];
}

- (void)updateLock:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/domain/{id}/reglock" params:params completion:completion];
}

- (void)updateIdProtection:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/domain/{id}/idprotection" params:params completion:completion];
}

- (void)getContact:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/contact" params:params completion:completion];
}

- (void)updateContact:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/domain/{id}/contact" params:params completion:completion];
}

- (void)getEmailForwarding:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/email/forwarding" params:params completion:completion];
}

- (void)updateEmailForwarding:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient put:@"/api/domain/{id}/email/forwarding" params:params completion:completion];
}

- (void)getAvailableTlds:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/order" params:params completion:completion];
}

- (void)order:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/domain/order" params:params completion:completion];
}

- (void)renew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/domain/{id}/renew" params:params completion:completion];
}

- (void)getTldForm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/order/{id}/form" params:params completion:completion];
}

- (void)getDocuments:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/domain/{id}/documents" params:params completion:completion];
}

@end
