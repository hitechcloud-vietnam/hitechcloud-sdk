(ns hitechcloud.sdk.ipam
  (:require [hitechcloud.sdk.http-client :as http]))

;; HiTechCloudIPAM: IP addresses, subnets, reverse DNS

(defn list_ips "GET /api/service/{id}/htcipam/ips - List IP addresses" [client & [params]] (http-get client "/api/service/{id}/htcipam/ips" params))

(defn list_subnets "GET /api/service/{id}/htcipam/subnets - List subnets" [client & [params]] (http-get client "/api/service/{id}/htcipam/subnets" params))

(defn list_rdns "GET /api/service/{id}/htcipam/rdns - List reverse DNS records" [client & [params]] (http-get client "/api/service/{id}/htcipam/rdns" params))

(defn set_rdns "POST /api/service/{id}/htcipam/rdns - Set reverse DNS" [client & [params]] (http-post client "/api/service/{id}/htcipam/rdns" params))

