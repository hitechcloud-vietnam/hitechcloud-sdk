package hitechcloud

import "fmt"

// CartResource handles cart endpoints
type CartResource struct {
	client *HTTPClient
}

func (r *CartResource) Get() (map[string]interface{}, error) {
	return r.client.Get("/api/cart", nil)
}

func (r *CartResource) Add(data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Post("/api/cart", data)
}

func (r *CartResource) Remove(itemID int) (map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/cart/%d", itemID))
}

func (r *CartResource) ApplyPromo(code string) (map[string]interface{}, error) {
	return r.client.Post("/api/cart/promo", map[string]string{"code": code})
}

func (r *CartResource) Checkout(data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Post("/api/cart/checkout", data)
}

func (r *CartResource) GetPaymentMethods() (map[string]interface{}, error) {
	return r.client.Get("/api/cart/payment_methods", nil)
}
