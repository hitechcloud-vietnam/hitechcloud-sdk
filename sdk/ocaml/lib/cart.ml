(** Cart: shopping cart management *)

(** GET /api/category - Return a list of product categories *)
let list_categories client params =
  HttpClient.get client "/api/category" params

(** GET /api/category/{category_id}/product - List products in category *)
let list_products client params =
  HttpClient.get client "/api/category/{category_id}/product" params

(** GET /api/order/{product_id} - Get product configuration details *)
let get_product_config client params =
  HttpClient.get client "/api/order/{product_id}" params

(** POST /api/order/{product_id} - Order new service *)
let order_product client params =
  HttpClient.post client "/api/order/{product_id}" params

(** POST /api/order - Order multiple services *)
let order_multiple client params =
  HttpClient.post client "/api/order" params

(** POST /api/quote - Calculate order cost and recurring prices *)
let get_quote client params =
  HttpClient.post client "/api/quote" params

