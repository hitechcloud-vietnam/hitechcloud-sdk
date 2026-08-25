#include "hitechcloud/affiliate.h"
#include <stdlib.h>


/* GET /api/affiliates/summary - Get Affiliate summary */
char *hc_affiliate_get_summary(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates/summary", NULL);
}

/* GET /api/affiliates/campaigns - Get Affiliate campaigns */
char *hc_affiliate_list_campaigns(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates/campaigns", NULL);
}

/* GET /api/affiliates/commissions - Get Affiliate commissions */
char *hc_affiliate_list_commissions(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates/commissions", NULL);
}

/* GET /api/affiliates/payouts - Get Affiliate payouts */
char *hc_affiliate_list_payouts(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates/payouts", NULL);
}

/* GET /api/affiliates/vouchers - Get Affiliate vouchers */
char *hc_affiliate_list_vouchers(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates/vouchers", NULL);
}

/* GET /api/affiliates/commissionplans - Get Affiliate commission plans */
char *hc_affiliate_list_commission_plans(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates/commissionplans", NULL);
}

