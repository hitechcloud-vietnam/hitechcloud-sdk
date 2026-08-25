#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Support: tickets, departments, news, knowledgebase
@interface HCSupport : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)listTickets:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createTicket:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getTicket:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)reply:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getAttachment:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)reopen:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)close:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listDepartments:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listNews:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getNews:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listKnowledgebaseCategories:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getKnowledgebaseCategory:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getKnowledgebaseArticle:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
