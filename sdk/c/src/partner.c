#include "hitechcloud/partner.h"
#include <stdlib.h>


/* GET /api/partner - Get partner info */
char *hc_partner_get_partner_info(hc_http_client_t *client) {
    return hc_get(client, "/api/partner", NULL);
}

/* POST /api/partner/apply - Apply to partner program */
char *hc_partner_apply(hc_http_client_t *client) {
    return hc_post(client, "/api/partner/apply", NULL);
}

/* GET /api/partner/tiers - List partner tiers */
char *hc_partner_list_tiers(hc_http_client_t *client) {
    return hc_get(client, "/api/partner/tiers", NULL);
}

/* GET /api/partner/pricing - Get partner pricing */
char *hc_partner_get_pricing(hc_http_client_t *client) {
    return hc_get(client, "/api/partner/pricing", NULL);
}

/* GET /api/partner/customers - List customers */
char *hc_partner_list_customers(hc_http_client_t *client) {
    return hc_get(client, "/api/partner/customers", NULL);
}

/* GET /api/partner/earnings - Get earnings */
char *hc_partner_get_earnings(hc_http_client_t *client) {
    return hc_get(client, "/api/partner/earnings", NULL);
}

/* GET /api/partner/wallet - Get wallet balance */
char *hc_partner_get_wallet(hc_http_client_t *client) {
    return hc_get(client, "/api/partner/wallet", NULL);
}

/* GET /api/partner/payouts - List payouts */
char *hc_partner_list_payouts(hc_http_client_t *client) {
    return hc_get(client, "/api/partner/payouts", NULL);
}

/* POST /api/partner/payouts - Request payout */
char *hc_partner_request_payout(hc_http_client_t *client) {
    return hc_post(client, "/api/partner/payouts", NULL);
}

/* GET /api/partner/leads - List leads */
char *hc_partner_list_leads(hc_http_client_t *client) {
    return hc_get(client, "/api/partner/leads", NULL);
}

/* POST /api/partner/leads - Create lead */
char *hc_partner_create_lead(hc_http_client_t *client) {
    return hc_post(client, "/api/partner/leads", NULL);
}

/* GET /api/partner/referral - Get referral info */
char *hc_partner_get_referral(hc_http_client_t *client) {
    return hc_get(client, "/api/partner/referral", NULL);
}

/* GET /api/partner/rates - Get exchange rates */
char *hc_partner_get_rates(hc_http_client_t *client) {
    return hc_get(client, "/api/partner/rates", NULL);
}

