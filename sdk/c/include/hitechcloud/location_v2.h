#ifndef HITECHCLOUD_LOCATION_V2_H
#define HITECHCLOUD_LOCATION_V2_H

#include "http_client.h"

/* LocationV2: countries, states, cities lookup */
char *hc_location_v2_list_countries(hc_http_client_t *client);
char *hc_location_v2_get_states(hc_http_client_t *client);
char *hc_location_v2_get_cities(hc_http_client_t *client);
char *hc_location_v2_get_cities_by_state_name(hc_http_client_t *client);

#endif
