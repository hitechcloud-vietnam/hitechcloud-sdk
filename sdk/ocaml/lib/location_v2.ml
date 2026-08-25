(** LocationV2: countries, states, cities lookup *)

(** GET /api/location_v2/countries - Return list of countries *)
let list_countries client params =
  HttpClient.get client "/api/location_v2/countries" params

(** GET /api/location_v2/{code}/state - Return states for a country code *)
let get_states client params =
  HttpClient.get client "/api/location_v2/{code}/state" params

(** GET /api/location_v2/state/{id}/city - Return cities for a state ID *)
let get_cities client params =
  HttpClient.get client "/api/location_v2/state/{id}/city" params

(** GET /api/location_v2/state/city/{name} - Return cities for a state name *)
let get_cities_by_state_name client params =
  HttpClient.get client "/api/location_v2/state/city/{name}" params

