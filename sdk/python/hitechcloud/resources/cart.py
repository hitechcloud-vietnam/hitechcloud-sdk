"""Cart resource (6 endpoints)"""

from . import BaseResource


class CartResource(BaseResource):
    """Cart: shopping cart management"""

    def get(self) -> dict:
        """GET /api/cart - Get cart contents"""
        return self._http.get("/api/cart")

    def add(self, product_id: int, **kwargs) -> dict:
        """POST /api/cart - Add item to cart"""
        data = {"product_id": product_id, **kwargs}
        return self._http.post("/api/cart", data)

    def remove(self, item_id: int) -> dict:
        """DELETE /api/cart/{id} - Remove item from cart"""
        return self._http.delete(f"/api/cart/{item_id}")

    def apply_promo(self, code: str) -> dict:
        """POST /api/cart/promo - Apply promo code"""
        return self._http.post("/api/cart/promo", {"code": code})

    def checkout(self, **kwargs) -> dict:
        """POST /api/cart/checkout - Complete checkout"""
        return self._http.post("/api/cart/checkout", kwargs)

    def get_payment_methods(self) -> dict:
        """GET /api/cart/payment - Get available payment methods"""
        return self._http.get("/api/cart/payment")
