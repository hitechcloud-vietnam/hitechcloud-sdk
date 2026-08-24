<?php

namespace HiTechCloud\SDK\Resources;

class Support extends BaseResource
{
    public function listTickets(array $params = []): array
    {
        return $this->http->get('/api/tickets', $params);
    }

    public function createTicket(array $data): array
    {
        return $this->http->post('/api/tickets', $data);
    }

    public function getTicket(string $ticketNumber): array
    {
        return $this->http->get("/api/tickets/{$ticketNumber}");
    }

    public function reply(string $ticketNumber, string $message): array
    {
        return $this->http->post("/api/tickets/{$ticketNumber}", ['message' => $message]);
    }

    public function getAttachment(string $file): array
    {
        return $this->http->get("/api/ticket/attachment/{$file}");
    }

    public function reopen(string $ticketNumber): array
    {
        return $this->http->put("/api/tickets/{$ticketNumber}/open");
    }

    public function close(string $ticketNumber): array
    {
        return $this->http->put("/api/tickets/{$ticketNumber}/close");
    }

    public function listDepartments(): array
    {
        return $this->http->get('/api/ticket/departments');
    }

    public function listNews(): array
    {
        return $this->http->get('/api/news');
    }

    public function getNews(int $newsId): array
    {
        return $this->http->get("/api/news/{$newsId}");
    }

    public function listKnowledgebaseCategories(): array
    {
        return $this->http->get('/api/knowledgebase');
    }

    public function getKnowledgebaseCategory(int $categoryId): array
    {
        return $this->http->get("/api/knowledgebase/{$categoryId}");
    }

    public function getKnowledgebaseArticle(int $articleId): array
    {
        return $this->http->get("/api/knowledgebase/article/{$articleId}");
    }
}
