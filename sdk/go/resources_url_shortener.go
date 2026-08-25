package hitechcloud

import "fmt"

// UrlShortenerResource handles UrlShortener endpoints
type UrlShortenerResource struct {
	client *HTTPClient
}

// Shorten - Shorten URL
func (r *UrlShortenerResource) Shorten(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/url-shortener/shorten", data)
}

// ListLinks - List links
func (r *UrlShortenerResource) ListLinks()(map[string]interface{}, error) {
	return r.client.Get("/api/url-shortener/links", nil)
}

// GetConfig - Get config
func (r *UrlShortenerResource) GetConfig()(map[string]interface{}, error) {
	return r.client.Get("/api/url-shortener/config", nil)
}

// GetStats - Get stats
func (r *UrlShortenerResource) GetStats()(map[string]interface{}, error) {
	return r.client.Get("/api/url-shortener/stats", nil)
}

// GetLink - Get link
func (r *UrlShortenerResource) GetLink(linkId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/url-shortener/links/%d", linkId), nil)
}

// DeleteLink - Delete link
func (r *UrlShortenerResource) DeleteLink(linkId int )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/url-shortener/links/%d", linkId))
}
