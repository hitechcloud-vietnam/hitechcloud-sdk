#import <Foundation/Foundation.h>
#import "HCHTTPClient.h"
#import "HCAffiliate.h"
#import "HCAffiliatesAdvanced.h"
#import "HCAiFactory.h"
#import "HCAuth.h"
#import "HCBareMetal.h"
#import "HCBilling.h"
#import "HCCart.h"
#import "HCCephS3.h"
#import "HCCloudGpu.h"
#import "HCCloudInstance.h"
#import "HCCloudService.h"
#import "HCCloudVm.h"
#import "HCCollocation.h"
#import "HCContacts.h"
#import "HCDns.h"
#import "HCDnsManage.h"
#import "HCDomains.h"
#import "HCEmailMfaV2.h"
#import "HCHosting.h"
#import "HCIpam.h"
#import "HCLocationV2.h"
#import "HCNetworkServices.h"
#import "HCNotifications.h"
#import "HCPartner.h"
#import "HCPasskeyV2.h"
#import "HCPmg.h"
#import "HCProxmox.h"
#import "HCProxmoxBackup.h"
#import "HCServiceStatus.h"
#import "HCServices.h"
#import "HCSsl.h"
#import "HCSupport.h"
#import "HCUrlShortener.h"
#import "HCUsers.h"
#import "HCVcloudstack.h"
#import "HCVirtualizor.h"
#import "HCVneidekyc.h"
#import "HCWillExpired.h"

@interface HCClient : NSObject
@property (nonatomic, strong, readonly) HCAffiliate *affiliate;
@property (nonatomic, strong, readonly) HCAffiliatesAdvanced *affiliatesAdvanced;
@property (nonatomic, strong, readonly) HCAiFactory *aiFactory;
@property (nonatomic, strong, readonly) HCAuth *auth;
@property (nonatomic, strong, readonly) HCBareMetal *bareMetal;
@property (nonatomic, strong, readonly) HCBilling *billing;
@property (nonatomic, strong, readonly) HCCart *cart;
@property (nonatomic, strong, readonly) HCCephS3 *cephS3;
@property (nonatomic, strong, readonly) HCCloudGpu *cloudGpu;
@property (nonatomic, strong, readonly) HCCloudInstance *cloudInstance;
@property (nonatomic, strong, readonly) HCCloudService *cloudService;
@property (nonatomic, strong, readonly) HCCloudVm *cloudVm;
@property (nonatomic, strong, readonly) HCCollocation *collocation;
@property (nonatomic, strong, readonly) HCContacts *contacts;
@property (nonatomic, strong, readonly) HCDns *dns;
@property (nonatomic, strong, readonly) HCDnsManage *dnsManage;
@property (nonatomic, strong, readonly) HCDomains *domains;
@property (nonatomic, strong, readonly) HCEmailMfaV2 *emailMfaV2;
@property (nonatomic, strong, readonly) HCHosting *hosting;
@property (nonatomic, strong, readonly) HCIpam *ipam;
@property (nonatomic, strong, readonly) HCLocationV2 *locationV2;
@property (nonatomic, strong, readonly) HCNetworkServices *networkServices;
@property (nonatomic, strong, readonly) HCNotifications *notifications;
@property (nonatomic, strong, readonly) HCPartner *partner;
@property (nonatomic, strong, readonly) HCPasskeyV2 *passkeyV2;
@property (nonatomic, strong, readonly) HCPmg *pmg;
@property (nonatomic, strong, readonly) HCProxmox *proxmox;
@property (nonatomic, strong, readonly) HCProxmoxBackup *proxmoxBackup;
@property (nonatomic, strong, readonly) HCServiceStatus *serviceStatus;
@property (nonatomic, strong, readonly) HCServices *services;
@property (nonatomic, strong, readonly) HCSsl *ssl;
@property (nonatomic, strong, readonly) HCSupport *support;
@property (nonatomic, strong, readonly) HCUrlShortener *urlShortener;
@property (nonatomic, strong, readonly) HCUsers *users;
@property (nonatomic, strong, readonly) HCVcloudstack *vcloudstack;
@property (nonatomic, strong, readonly) HCVirtualizor *virtualizor;
@property (nonatomic, strong, readonly) HCVneidekyc *vneidekyc;
@property (nonatomic, strong, readonly) HCWillExpired *willExpired;
- (instancetype)initWithBaseUrl:(nullable NSString *)baseUrl
                         token:(nullable NSString *)token
                        timeout:(NSTimeInterval)timeout
                     maxRetries:(NSInteger)maxRetries;
@end
