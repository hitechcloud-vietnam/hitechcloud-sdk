<?php

namespace HiTechCloud\SDK\Resources;

class Cart extends BaseResource
{
    /**
     * List categories
     */
    public function listCategories(): array
    {
        return $this->http->get('/api/category');
    }

    /**
     * List products
     */
    public function listProducts(int $categoryId): array
    {
        return $this->http->get('/api/category/' . $categoryId . '/product');
    }

    /**
     * Get product
     */
    public function getProduct(int $productId): array
    {
        return $this->http->get('/api/order/' . $productId);
    }

    /**
     * Configure product
     */
    public function configureProduct(int $productId, array $data): array
    {
        return $this->http->post('/api/order/' . $productId, $data);
    }

    /**
     * Checkout
     */
    public function checkout(array $data): array
    {
        return $this->http->post('/api/order', $data);
    }

    /**
     * Get quote
     */
    public function getQuote(array $data): array
    {
        return $this->http->post('/api/quote', $data);
    }

}
