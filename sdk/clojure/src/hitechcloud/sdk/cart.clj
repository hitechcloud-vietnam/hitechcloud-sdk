(ns hitechcloud.sdk.cart
  (:require [hitechcloud.sdk.http-client :as http]))

;; Cart: shopping cart management

(defn list_categories "GET /api/category - Return a list of product categories" [client & [params]] (http-get client "/api/category" params))

(defn list_products "GET /api/category/{category_id}/product - List products in category" [client & [params]] (http-get client "/api/category/{category_id}/product" params))

(defn get_product_config "GET /api/order/{product_id} - Get product configuration details" [client & [params]] (http-get client "/api/order/{product_id}" params))

(defn order_product "POST /api/order/{product_id} - Order new service" [client & [params]] (http-post client "/api/order/{product_id}" params))

(defn order_multiple "POST /api/order - Order multiple services" [client & [params]] (http-post client "/api/order" params))

(defn get_quote "POST /api/quote - Calculate order cost and recurring prices" [client & [params]] (http-post client "/api/quote" params))

