#include "hitechcloud/affiliates_advanced.h"
#include <stdlib.h>


/* GET /api/affiliates_adv/{client_id}/info - Get affiliate account info */
char *hc_affiliates_advanced_get_info(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates_adv/{client_id}/info", NULL);
}

/* GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats */
char *hc_affiliates_advanced_get_stats(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates_adv/{client_id}/stats", NULL);
}

/* GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans */
char *hc_affiliates_advanced_get_commission_plans(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates_adv/{client_id}/commission-plans", NULL);
}

/* GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers */
char *hc_affiliates_advanced_get_vouchers(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates_adv/{client_id}/vouchers", NULL);
}

/* GET /api/affiliates_adv/{client_id}/commissions - Get commissions */
char *hc_affiliates_advanced_get_commissions(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates_adv/{client_id}/commissions", NULL);
}

/* GET /api/affiliates_adv/{client_id}/referrals - Get referred clients */
char *hc_affiliates_advanced_get_referrals(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates_adv/{client_id}/referrals", NULL);
}

/* GET /api/affiliates_adv/{client_id}/payouts - Get payout history */
char *hc_affiliates_advanced_get_payouts(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates_adv/{client_id}/payouts", NULL);
}

/* GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns */
char *hc_affiliates_advanced_get_campaigns(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates_adv/{client_id}/campaigns", NULL);
}

/* GET /api/affiliates_adv/{client_id}/audit - Get activity log */
char *hc_affiliates_advanced_get_audit_log(hc_http_client_t *client) {
    return hc_get(client, "/api/affiliates_adv/{client_id}/audit", NULL);
}

/* POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account */
char *hc_affiliates_advanced_activate(hc_http_client_t *client) {
    return hc_post(client, "/api/affiliates_adv/{client_id}/activate", NULL);
}

/* POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan */
char *hc_affiliates_advanced_set_commission_plan(hc_http_client_t *client) {
    return hc_post(client, "/api/affiliates_adv/{client_id}/commission-plan/{commission_id}", NULL);
}

/* POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher */
char *hc_affiliates_advanced_create_voucher(hc_http_client_t *client) {
    return hc_post(client, "/api/affiliates_adv/{client_id}/vouchers/{plan_id}", NULL);
}

/* DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher */
char *hc_affiliates_advanced_delete_voucher(hc_http_client_t *client) {
    return hc_delete(client, "/api/affiliates_adv/{client_id}/vouchers/{voucher_id}", NULL);
}

/* POST /api/affiliates_adv/{client_id}/landing-page - Set landing page */
char *hc_affiliates_advanced_set_landing_page(hc_http_client_t *client) {
    return hc_post(client, "/api/affiliates_adv/{client_id}/landing-page", NULL);
}

