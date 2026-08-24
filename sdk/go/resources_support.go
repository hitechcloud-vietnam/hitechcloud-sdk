package hitechcloud

import "fmt"

// SupportResource handles support endpoints
type SupportResource struct {
	client *HTTPClient
}

func (r *SupportResource) ListDepartments() (map[string]interface{}, error) {
	return r.client.Get("/api/support/departments", nil)
}

func (r *SupportResource) ListTickets(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/support/tickets", params)
}

func (r *SupportResource) GetTicket(ticketID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/support/tickets/%d", ticketID), nil)
}

func (r *SupportResource) CreateTicket(data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Post("/api/support/tickets", data)
}

func (r *SupportResource) ReplyTicket(ticketID int, message string) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/support/tickets/%d", ticketID), map[string]string{"message": message})
}

func (r *SupportResource) CloseTicket(ticketID int) (map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/support/tickets/%d/close", ticketID), nil)
}

func (r *SupportResource) ListNews(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/support/news", params)
}

func (r *SupportResource) GetNews(newsID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/support/news/%d", newsID), nil)
}

func (r *SupportResource) ListKbCategories() (map[string]interface{}, error) {
	return r.client.Get("/api/support/kb/categories", nil)
}

func (r *SupportResource) ListKbArticles(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/support/kb/articles", params)
}

func (r *SupportResource) GetKbArticle(articleID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/support/kb/articles/%d", articleID), nil)
}

func (r *SupportResource) SearchKb(query string) (map[string]interface{}, error) {
	return r.client.Get("/api/support/kb/search", map[string]string{"query": query})
}

func (r *SupportResource) ListAnnouncements(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/support/announcements", params)
}
