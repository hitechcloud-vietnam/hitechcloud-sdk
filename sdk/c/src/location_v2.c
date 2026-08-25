#include "hitechcloud/location_v2.h"
#include <stdlib.h>


/* GET /api/location_v2/countries - Return list of countries */
char *hc_location_v2_list_countries(hc_http_client_t *client) {
    return hc_get(client, "/api/location_v2/countries", NULL);
}

/* GET /api/location_v2/{code}/state - Return states for a country code */
char *hc_location_v2_get_states(hc_http_client_t *client) {
    return hc_get(client, "/api/location_v2/{code}/state", NULL);
}

/* GET /api/location_v2/state/{id}/city - Return cities for a state ID */
char *hc_location_v2_get_cities(hc_http_client_t *client) {
    return hc_get(client, "/api/location_v2/state/{id}/city", NULL);
}

/* GET /api/location_v2/state/city/{name} - Return cities for a state name */
char *hc_location_v2_get_cities_by_state_name(hc_http_client_t *client) {
    return hc_get(client, "/api/location_v2/state/city/{name}", NULL);
}

