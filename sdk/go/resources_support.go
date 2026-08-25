package hitechcloud

import "fmt"

// SupportResource handles Support endpoints
type SupportResource struct {
	client *HTTPClient
}

// ListTickets - List tickets
func (r *SupportResource) ListTickets(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/tickets", params)
}

// CreateTicket - Create ticket
func (r *SupportResource) CreateTicket(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/tickets", data)
}

// GetTicket - Get ticket
func (r *SupportResource) GetTicket(ticketNumber string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/tickets/%s", ticketNumber), nil)
}

// ReplyTicket - Reply to ticket
func (r *SupportResource) ReplyTicket(ticketNumber string, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/tickets/%s", ticketNumber), data)
}

// GetAttachment - Get attachment
func (r *SupportResource) GetAttachment(file string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/ticket/attachment/%s", file), nil)
}

// OpenTicket - Open ticket
func (r *SupportResource) OpenTicket(ticketNumber string )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/tickets/%s/open", ticketNumber), nil)
}

// CloseTicket - Close ticket
func (r *SupportResource) CloseTicket(ticketNumber string )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/tickets/%s/close", ticketNumber), nil)
}

// GetDepartments - Get departments
func (r *SupportResource) GetDepartments()(map[string]interface{}, error) {
	return r.client.Get("/api/ticket/departments", nil)
}

// ListNews - List news
func (r *SupportResource) ListNews(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/news", params)
}

// GetNews - Get news article
func (r *SupportResource) GetNews(newsId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/news/%d", newsId), nil)
}

// ListKnowledgebase - List knowledgebase
func (r *SupportResource) ListKnowledgebase(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/knowledgebase", params)
}

// GetKnowledgebaseCategory - Get KB category
func (r *SupportResource) GetKnowledgebaseCategory(categoryId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/knowledgebase/%d", categoryId), nil)
}

// GetKnowledgebaseArticle - Get KB article
func (r *SupportResource) GetKnowledgebaseArticle(articleId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/knowledgebase/article/%d", articleId), nil)
}
