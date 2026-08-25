#import "HCVneidekyc.h"

@interface HCVneidekyc ()
@property (nonatomic, strong) HCHTTPClient *httpClient;
@end

@implementation HCVneidekyc

- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient {
    self = [super init];
    if (self) { _httpClient = httpClient; }
    return self;
}

- (void)startPersonalEkyc:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/vneidekyc/ekyc/session" params:params completion:completion];
}

- (void)getEkycSession:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/vneidekyc/ekyc/session/{session_hash}" params:params completion:completion];
}

- (void)listClientSessions:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/vneidekyc/ekyc/list/{client_id}" params:params completion:completion];
}

- (void)uploadFile:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/vneidekyc/ekyc/{session_hash}/upload" params:params completion:completion];
}

- (void)submitEkyc:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/vneidekyc/ekyc/{session_hash}/submit" params:params completion:completion];
}

- (void)cancelSession:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/vneidekyc/ekyc/{session_hash}/cancel" params:params completion:completion];
}

- (void)acceptEkyc:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/vneidekyc/ekyc/{session_hash}/accept" params:params completion:completion];
}

- (void)rejectEkyc:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/vneidekyc/ekyc/{session_hash}/reject" params:params completion:completion];
}

- (void)lookupOrganization:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/vneidekyc/org/lookup" params:params completion:completion];
}

- (void)startOrgVerification:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/vneidekyc/org/start" params:params completion:completion];
}

- (void)getOrganization:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/vneidekyc/org/{org_hash}" params:params completion:completion];
}

- (void)acceptOrganization:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/vneidekyc/org/{org_hash}/accept" params:params completion:completion];
}

- (void)rejectOrganization:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/vneidekyc/org/{org_hash}/reject" params:params completion:completion];
}

- (void)uploadSignedPdf:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient post:@"/api/vneidekyc/pdf/upload" params:params completion:completion];
}

- (void)getSignedPdf:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/vneidekyc/pdf/{pdf_hash}" params:params completion:completion];
}

- (void)getClientStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion {
    [self.httpClient get:@"/api/vneidekyc/client/{client_id}/status" params:params completion:completion];
}

@end
