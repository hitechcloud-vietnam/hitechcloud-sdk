package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class Cart extends BaseResource {

    public Cart(HttpClient http) {
        super(http);
    }

    /** List categories */
    public Map<String, Object> categories() throws Exception {
        return http.get("/api/category");
    }

    /** List products */
    public Map<String, Object> products(int categoryId) throws Exception {
        return http.get(String.format("/api/category/%categoryId/product", categoryId));
    }

    /** Get order info */
    public Map<String, Object> orderInfo(int productId) throws Exception {
        return http.get(String.format("/api/order/%productId", productId));
    }

    /** Create order */
    public Map<String, Object> createOrder(int productId, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/order/%productId", productId), data);
    }

    /** Checkout */
    public Map<String, Object> checkout(Map<String, Object> data) throws Exception {
        return http.post("/api/order", data);
    }

    /** Get quote */
    public Map<String, Object> quote(Map<String, Object> data) throws Exception {
        return http.post("/api/quote", data);
    }

}
