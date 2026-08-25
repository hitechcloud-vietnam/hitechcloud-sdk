#ifndef HITECHCLOUD_AFFILIATE_H
#define HITECHCLOUD_AFFILIATE_H

#include "http_client.h"

/* Affiliate: affiliate program management */
char *hc_affiliate_get_summary(hc_http_client_t *client);
char *hc_affiliate_list_campaigns(hc_http_client_t *client);
char *hc_affiliate_list_commissions(hc_http_client_t *client);
char *hc_affiliate_list_payouts(hc_http_client_t *client);
char *hc_affiliate_list_vouchers(hc_http_client_t *client);
char *hc_affiliate_list_commission_plans(hc_http_client_t *client);

#endif
