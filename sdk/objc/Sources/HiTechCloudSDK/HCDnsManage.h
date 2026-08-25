#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// DNS Manage: domain DNS records, DNSSEC, nameserver registration
@interface HCDnsManage : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getRecords:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)updateRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getRecordTypes:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getDnssecFlags:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getDnssecRecords:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)createDnssecRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)deleteDnssecRecord:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)registerNameserver:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
