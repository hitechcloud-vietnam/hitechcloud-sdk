(ns hitechcloud.sdk.location_v2
  (:require [hitechcloud.sdk.http-client :as http]))

;; LocationV2: countries, states, cities lookup

(defn list_countries "GET /api/location_v2/countries - Return list of countries" [client & [params]] (http-get client "/api/location_v2/countries" params))

(defn get_states "GET /api/location_v2/{code}/state - Return states for a country code" [client & [params]] (http-get client "/api/location_v2/{code}/state" params))

(defn get_cities "GET /api/location_v2/state/{id}/city - Return cities for a state ID" [client & [params]] (http-get client "/api/location_v2/state/{id}/city" params))

(defn get_cities_by_state_name "GET /api/location_v2/state/city/{name} - Return cities for a state name" [client & [params]] (http-get client "/api/location_v2/state/city/{name}" params))

