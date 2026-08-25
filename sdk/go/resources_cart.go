package hitechcloud

import "fmt"

// CartResource handles Cart endpoints
type CartResource struct {
	client *HTTPClient
}

// ListCategories - List categories
func (r *CartResource) ListCategories()(map[string]interface{}, error) {
	return r.client.Get("/api/category", nil)
}

// ListProducts - List products
func (r *CartResource) ListProducts(categoryId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/category/%d/product", categoryId), nil)
}

// GetProduct - Get product
func (r *CartResource) GetProduct(productId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/order/%d", productId), nil)
}

// ConfigureProduct - Configure product
func (r *CartResource) ConfigureProduct(productId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/order/%d", productId), data)
}

// Checkout - Checkout
func (r *CartResource) Checkout(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/order", data)
}

// GetQuote - Get quote
func (r *CartResource) GetQuote(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/quote", data)
}
