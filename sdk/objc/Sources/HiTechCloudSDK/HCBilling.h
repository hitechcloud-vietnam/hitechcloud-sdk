#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"

/// Billing & Contracts: balance, invoices, payment methods
@interface HCBilling : NSObject
- (instancetype)initWithHttpClient:(HCHTTPClient *)httpClient;
- (void)getBalance:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)listInvoices:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getInvoice:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)applyCredit:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getPaymentMethods:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;
- (void)getPaymentFees:(nullable NSDictionary *)params completion:(HCCompletionBlock)completion;

@end
