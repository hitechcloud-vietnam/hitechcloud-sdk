#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding
@interface HCDomains : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)list:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)get:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getByName:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)whois:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)whoisLookup:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)checkAvailability:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getNameservers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateNameservers:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getEppCode:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)sync:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getLock:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateLock:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateIdProtection:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getContact:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateContact:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getEmailForwarding:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateEmailForwarding:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getAvailableTlds:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)order:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)renew:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getTldForm:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getDocuments:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
