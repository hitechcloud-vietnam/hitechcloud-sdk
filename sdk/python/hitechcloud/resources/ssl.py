"""SSL Certificates resource (6 endpoints)"""

from .base import BaseResource


class SSLResource(BaseResource):
    """SSL Certificates: list, order, download certificates"""

    def list(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/certificate - List all SSL certificates"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/certificate", params)

    def get(self, certificate_id: int) -> dict:
        """GET /api/certificate/{id} - Return certificate details"""
        return self._http.get(f"/api/certificate/{certificate_id}")

    def download(self, certificate_id: int) -> dict:
        """GET /api/certificate/{id}/crt - Download X.509 certificate"""
        return self._http.get(f"/api/certificate/{certificate_id}/crt")

    def list_available(self) -> dict:
        """GET /api/certificate/order - List available certificates for purchase"""
        return self._http.get("/api/certificate/order")

    def order(self, product_id: int, csr: str, server_software_id: int = None) -> dict:
        """POST /api/certificate/order - Order new certificate"""
        data = {
            "product_id": product_id,
            "csr": csr,
        }
        if server_software_id is not None:
            data["server_software_id"] = server_software_id
        return self._http.post("/api/certificate/order", data)

    def list_server_software(self, product_id: int) -> dict:
        """GET /api/certificate/order/{product_id}/software - List server software"""
        return self._http.get(f"/api/certificate/order/{product_id}/software")
