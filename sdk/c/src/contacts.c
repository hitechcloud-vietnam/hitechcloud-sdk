#include "hitechcloud/contacts.h"
#include <stdlib.h>


/* GET /api/contact - Return a list of contacts on this account */
char *hc_contacts_list(hc_http_client_t *client) {
    return hc_get(client, "/api/contact", NULL);
}

/* POST /api/contact - Create new contact account */
char *hc_contacts_create(hc_http_client_t *client) {
    return hc_post(client, "/api/contact", NULL);
}

/* GET /api/contact/privileges - List possible contact privileges */
char *hc_contacts_get_privileges(hc_http_client_t *client) {
    return hc_get(client, "/api/contact/privileges", NULL);
}

/* GET /api/contact/{id} - Get contact details */
char *hc_contacts_get(hc_http_client_t *client) {
    return hc_get(client, "/api/contact/{id}", NULL);
}

/* PUT /api/contact/{id} - Update contact details */
char *hc_contacts_update(hc_http_client_t *client) {
    return hc_put(client, "/api/contact/{id}", NULL);
}

