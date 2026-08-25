#ifndef HITECHCLOUD_PARTNER_H
#define HITECHCLOUD_PARTNER_H

#include "http_client.h"

/* Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates */
char *hc_partner_get_partner_info(hc_http_client_t *client);
char *hc_partner_apply(hc_http_client_t *client);
char *hc_partner_list_tiers(hc_http_client_t *client);
char *hc_partner_get_pricing(hc_http_client_t *client);
char *hc_partner_list_customers(hc_http_client_t *client);
char *hc_partner_get_earnings(hc_http_client_t *client);
char *hc_partner_get_wallet(hc_http_client_t *client);
char *hc_partner_list_payouts(hc_http_client_t *client);
char *hc_partner_request_payout(hc_http_client_t *client);
char *hc_partner_list_leads(hc_http_client_t *client);
char *hc_partner_create_lead(hc_http_client_t *client);
char *hc_partner_get_referral(hc_http_client_t *client);
char *hc_partner_get_rates(hc_http_client_t *client);

#endif
