#ifndef HITECHCLOUD_BILLING_H
#define HITECHCLOUD_BILLING_H

#include "http_client.h"

/* Billing & Contracts: balance, invoices, payment methods */
char *hc_billing_get_balance(hc_http_client_t *client);
char *hc_billing_list_invoices(hc_http_client_t *client);
char *hc_billing_get_invoice(hc_http_client_t *client);
char *hc_billing_apply_credit(hc_http_client_t *client);
char *hc_billing_get_payment_methods(hc_http_client_t *client);
char *hc_billing_get_payment_fees(hc_http_client_t *client);

#endif
