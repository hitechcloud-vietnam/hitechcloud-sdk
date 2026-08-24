package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.HashMap;
import java.util.Map;

public class Cart extends BaseResource {
    public Cart(HttpClient httpClient) { super(httpClient); }

    public Map<String, Object> get() { return httpClient.get("/api/cart", null); }
    public Map<String, Object> add(Map<String, Object> data) { return httpClient.post("/api/cart", data); }
    public Map<String, Object> remove(int itemId) { return httpClient.delete("/api/cart/" + itemId); }

    public Map<String, Object> applyPromo(String code) {
        Map<String, String> body = new HashMap<>();
        body.put("code", code);
        return httpClient.post("/api/cart/promo", body);
    }

    public Map<String, Object> checkout(Map<String, Object> data) { return httpClient.post("/api/cart/checkout", data); }
    public Map<String, Object> getPaymentMethods() { return httpClient.get("/api/cart/payment_methods", null); }
}
