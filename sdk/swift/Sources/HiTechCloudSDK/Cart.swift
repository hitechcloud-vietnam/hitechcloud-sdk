import Foundation

/// Cart: shopping cart management
public class CartResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/category - Return a list of product categories
    public func listCategories(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/category", params: params)
    }

    /// GET /api/category/{category_id}/product - List products in category
    public func listProducts(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/category/{category_id}/product", params: params)
    }

    /// GET /api/order/{product_id} - Get product configuration details
    public func getProductConfig(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/order/{product_id}", params: params)
    }

    /// POST /api/order/{product_id} - Order new service
    public func orderProduct(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/order/{product_id}", params: params)
    }

    /// POST /api/order - Order multiple services
    public func orderMultiple(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/order", params: params)
    }

    /// POST /api/quote - Calculate order cost and recurring prices
    public func getQuote(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/quote", params: params)
    }

}
