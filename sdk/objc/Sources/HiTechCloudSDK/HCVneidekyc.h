#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// VNeIDEKYC: eKYC identity verification and organization verification
@interface HCVneidekyc : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)startPersonalEkyc:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getEkycSession:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listClientSessions:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)uploadFile:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)submitEkyc:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)cancelSession:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)acceptEkyc:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)rejectEkyc:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)lookupOrganization:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)startOrgVerification:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getOrganization:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)acceptOrganization:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)rejectOrganization:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)uploadSignedPdf:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getSignedPdf:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getClientStatus:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
