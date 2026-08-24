"""Cart resource (6 endpoints)"""

from .base import BaseResource


class CartResource(BaseResource):
    """Cart: shopping cart management"""

    def list_categories(self) -> dict:
        """GET /api/category - Return a list of product categories"""
        return self._http.get("/api/category")

    def list_products(self, category_id: int) -> dict:
        """GET /api/category/{category_id}/product - List products in category"""
        return self._http.get(f"/api/category/{category_id}/product")

    def get_product_config(self, product_id: int) -> dict:
        """GET /api/order/{product_id} - Get product configuration details"""
        return self._http.get(f"/api/order/{product_id}")

    def order_product(self, product_id: int, **kwargs) -> dict:
        """POST /api/order/{product_id} - Order new service"""
        return self._http.post(f"/api/order/{product_id}", kwargs)

    def order_multiple(self, items: list, **kwargs) -> dict:
        """POST /api/order - Order multiple services"""
        data = {"items": items, **kwargs}
        return self._http.post("/api/order", data)

    def get_quote(self, items: list, **kwargs) -> dict:
        """POST /api/quote - Calculate order cost and recurring prices"""
        data = {"items": items, **kwargs}
        return self._http.post("/api/quote", data)
