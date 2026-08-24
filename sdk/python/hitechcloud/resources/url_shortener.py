"""URL Shortener resource (6 endpoints)"""

from .base import BaseResource

class UrlShortenerResource(BaseResource):
    """URL Shortener: shorten URLs, manage links, stats"""

    def shorten(self, url: str, **kwargs) -> dict:
        """POST /api/url-shortener/shorten - Shorten a URL"""
        data = {"url": url, **kwargs}
        return self._http.post("/api/url-shortener/shorten", data)

    def list_links(self) -> dict:
        """GET /api/url-shortener/links - List links"""
        return self._http.get("/api/url-shortener/links")

    def get_config(self) -> dict:
        """GET /api/url-shortener/config - Get shortener config"""
        return self._http.get("/api/url-shortener/config")

    def get_stats(self) -> dict:
        """GET /api/url-shortener/stats - Get link stats"""
        return self._http.get("/api/url-shortener/stats")

    def get_link(self, link_id: int) -> dict:
        """GET /api/url-shortener/links/{id} - Get link details"""
        return self._http.get(f"/api/url-shortener/links/{link_id}")

    def delete_link(self, link_id: int) -> dict:
        """DELETE /api/url-shortener/links/{id} - Delete link"""
        return self._http.delete(f"/api/url-shortener/links/{link_id}")
