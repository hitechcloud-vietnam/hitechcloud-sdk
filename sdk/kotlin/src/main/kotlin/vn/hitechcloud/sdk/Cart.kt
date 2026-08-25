package vn.hitechcloud.sdk

/** Cart: shopping cart management */
class CartResource(private val httpClient: HttpClient) {
    /** GET /api/category - Return a list of product categories */
    fun listCategories(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/category", params)
    }

    /** GET /api/category/{category_id}/product - List products in category */
    fun listProducts(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/category/{category_id}/product", params)
    }

    /** GET /api/order/{product_id} - Get product configuration details */
    fun getProductConfig(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/order/{product_id}", params)
    }

    /** POST /api/order/{product_id} - Order new service */
    fun orderProduct(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/order/{product_id}", params)
    }

    /** POST /api/order - Order multiple services */
    fun orderMultiple(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/order", params)
    }

    /** POST /api/quote - Calculate order cost and recurring prices */
    fun getQuote(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/quote", params)
    }

}
