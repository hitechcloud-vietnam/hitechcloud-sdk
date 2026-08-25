namespace HiTechCloud.SDK

/// Cart: shopping cart management
type CartResource(httpClient: HttpClient) =

    /// GET /api/category - Return a list of product categories
    member this.ListCategories() =
        async {
            return! httpClient.getAsync("/api/category")
        }

    /// GET /api/category/{category_id}/product - List products in category
    member this.ListProducts() =
        async {
            return! httpClient.getAsync("/api/category/{category_id}/product")
        }

    /// GET /api/order/{product_id} - Get product configuration details
    member this.GetProductConfig() =
        async {
            return! httpClient.getAsync("/api/order/{product_id}")
        }

    /// POST /api/order/{product_id} - Order new service
    member this.OrderProduct() =
        async {
            return! httpClient.postAsync("/api/order/{product_id}")
        }

    /// POST /api/order - Order multiple services
    member this.OrderMultiple() =
        async {
            return! httpClient.postAsync("/api/order")
        }

    /// POST /api/quote - Calculate order cost and recurring prices
    member this.GetQuote() =
        async {
            return! httpClient.postAsync("/api/quote")
        }

