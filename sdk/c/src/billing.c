#include "hitechcloud/billing.h"
#include <stdlib.h>


/* GET /api/balance - Get account balance and credit */
char *hc_billing_get_balance(hc_http_client_t *client) {
    return hc_get(client, "/api/balance", NULL);
}

/* GET /api/invoice - List all invoices */
char *hc_billing_list_invoices(hc_http_client_t *client) {
    return hc_get(client, "/api/invoice", NULL);
}

/* GET /api/invoice/{id} - Get invoice details */
char *hc_billing_get_invoice(hc_http_client_t *client) {
    return hc_get(client, "/api/invoice/{id}", NULL);
}

/* POST /api/invoice/{id}/credit - Apply account credit to invoice */
char *hc_billing_apply_credit(hc_http_client_t *client) {
    return hc_post(client, "/api/invoice/{id}/credit", NULL);
}

/* GET /api/payment - List available payment methods */
char *hc_billing_get_payment_methods(hc_http_client_t *client) {
    return hc_get(client, "/api/payment", NULL);
}

/* GET /api/payment/fees - List payment methods with fees */
char *hc_billing_get_payment_fees(hc_http_client_t *client) {
    return hc_get(client, "/api/payment/fees", NULL);
}

