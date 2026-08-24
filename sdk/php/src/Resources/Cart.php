<?php

namespace HiTechCloud\SDK\Resources;

class Cart extends BaseResource
{
    public function get(): array
    {
        return $this->http->get('/api/cart');
    }

    public function add(int $productId, array $data = []): array
    {
        return $this->http->post('/api/cart', array_merge(['product_id' => $productId], $data));
    }

    public function remove(int $itemId): array
    {
        return $this->http->delete("/api/cart/{$itemId}");
    }

    public function applyPromo(string $code): array
    {
        return $this->http->post('/api/cart/promo', ['code' => $code]);
    }

    public function checkout(array $data = []): array
    {
        return $this->http->post('/api/cart/checkout', $data);
    }

    public function getPaymentMethods(): array
    {
        return $this->http->get('/api/cart/payment');
    }
}
