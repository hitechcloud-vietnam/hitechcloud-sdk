#ifndef HITECHCLOUD_AFFILIATES_ADVANCED_H
#define HITECHCLOUD_AFFILIATES_ADVANCED_H

#include "http_client.h"

/* AffiliatesAdvanced: advanced affiliate management with client_id */
char *hc_affiliates_advanced_get_info(hc_http_client_t *client);
char *hc_affiliates_advanced_get_stats(hc_http_client_t *client);
char *hc_affiliates_advanced_get_commission_plans(hc_http_client_t *client);
char *hc_affiliates_advanced_get_vouchers(hc_http_client_t *client);
char *hc_affiliates_advanced_get_commissions(hc_http_client_t *client);
char *hc_affiliates_advanced_get_referrals(hc_http_client_t *client);
char *hc_affiliates_advanced_get_payouts(hc_http_client_t *client);
char *hc_affiliates_advanced_get_campaigns(hc_http_client_t *client);
char *hc_affiliates_advanced_get_audit_log(hc_http_client_t *client);
char *hc_affiliates_advanced_activate(hc_http_client_t *client);
char *hc_affiliates_advanced_set_commission_plan(hc_http_client_t *client);
char *hc_affiliates_advanced_create_voucher(hc_http_client_t *client);
char *hc_affiliates_advanced_delete_voucher(hc_http_client_t *client);
char *hc_affiliates_advanced_set_landing_page(hc_http_client_t *client);

#endif
