<?php

namespace HiTechCloud\SDK\Resources;

class Support extends BaseResource
{
    /**
     * List tickets
     */
    public function listTickets(array $params = []): array
    {
        return $this->http->get('/api/tickets', $params);
    }

    /**
     * Create ticket
     */
    public function createTicket(array $data): array
    {
        return $this->http->post('/api/tickets', $data);
    }

    /**
     * Get ticket
     */
    public function getTicket(string $ticketNumber): array
    {
        return $this->http->get('/api/tickets/' . $ticketNumber);
    }

    /**
     * Reply to ticket
     */
    public function replyTicket(string $ticketNumber, array $data): array
    {
        return $this->http->post('/api/tickets/' . $ticketNumber, $data);
    }

    /**
     * Get attachment
     */
    public function getAttachment(string $file): array
    {
        return $this->http->get('/api/ticket/attachment/' . $file);
    }

    /**
     * Open ticket
     */
    public function openTicket(string $ticketNumber): array
    {
        return $this->http->put('/api/tickets/' . $ticketNumber . '/open');
    }

    /**
     * Close ticket
     */
    public function closeTicket(string $ticketNumber): array
    {
        return $this->http->put('/api/tickets/' . $ticketNumber . '/close');
    }

    /**
     * Get departments
     */
    public function getDepartments(): array
    {
        return $this->http->get('/api/ticket/departments');
    }

    /**
     * List news
     */
    public function listNews(array $params = []): array
    {
        return $this->http->get('/api/news', $params);
    }

    /**
     * Get news article
     */
    public function getNews(int $newsId): array
    {
        return $this->http->get('/api/news/' . $newsId);
    }

    /**
     * List knowledgebase
     */
    public function listKnowledgebase(array $params = []): array
    {
        return $this->http->get('/api/knowledgebase', $params);
    }

    /**
     * Get KB category
     */
    public function getKnowledgebaseCategory(int $categoryId): array
    {
        return $this->http->get('/api/knowledgebase/' . $categoryId);
    }

    /**
     * Get KB article
     */
    public function getKnowledgebaseArticle(int $articleId): array
    {
        return $this->http->get('/api/knowledgebase/article/' . $articleId);
    }

}
