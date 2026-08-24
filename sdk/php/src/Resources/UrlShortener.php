<?php

namespace HiTechCloud\SDK\Resources;

class UrlShortener extends BaseResource
{
    /**
     * Shorten URL
     */
    public function shorten(array $data): array
    {
        return $this->http->post('/api/url-shortener/shorten', $data);
    }

    /**
     * List links
     */
    public function listLinks(): array
    {
        return $this->http->get('/api/url-shortener/links');
    }

    /**
     * Get config
     */
    public function getConfig(): array
    {
        return $this->http->get('/api/url-shortener/config');
    }

    /**
     * Get stats
     */
    public function getStats(): array
    {
        return $this->http->get('/api/url-shortener/stats');
    }

    /**
     * Get link
     */
    public function getLink(int $linkId): array
    {
        return $this->http->get('/api/url-shortener/links/' . $serviceId);
    }

    /**
     * Delete link
     */
    public function deleteLink(int $linkId): array
    {
        return $this->http->delete('/api/url-shortener/links/' . $serviceId);
    }

}
