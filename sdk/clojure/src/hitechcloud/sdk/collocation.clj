(ns hitechcloud.sdk.collocation
  (:require [hitechcloud.sdk.http-client :as http]))

;; Collocation Services: PDU port management

(defn list_pdu_ports "GET /api/service/{id}/pdu - List PDU ports assigned to service" [client & [params]] (http-get client "/api/service/{id}/pdu" params))

(defn get_pdu_port_state "GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state" [client & [params]] (http-get client "/api/service/{id}/pdu/{port}" params))

(defn set_pdu_port_status "POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state" [client & [params]] (http-post client "/api/service/{id}/pdu/{port}" params))

