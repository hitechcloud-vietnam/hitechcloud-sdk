"""Cloud GPU resource (6 endpoints)"""

from . import BaseResource


class CloudGpuResource(BaseResource):
    """Cloud GPU: GPU instance management"""

    def list(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/gpu - List GPU instances"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/gpu", params)

    def get(self, gpu_id: int) -> dict:
        """GET /api/gpu/{id} - Get GPU instance details"""
        return self._http.get(f"/api/gpu/{gpu_id}")

    def start(self, gpu_id: int) -> dict:
        """POST /api/gpu/{id}/start - Start GPU instance"""
        return self._http.post(f"/api/gpu/{gpu_id}/start")

    def stop(self, gpu_id: int) -> dict:
        """POST /api/gpu/{id}/stop - Stop GPU instance"""
        return self._http.post(f"/api/gpu/{gpu_id}/stop")

    def restart(self, gpu_id: int) -> dict:
        """POST /api/gpu/{id}/restart - Restart GPU instance"""
        return self._http.post(f"/api/gpu/{gpu_id}/restart")

    def get_console(self, gpu_id: int) -> dict:
        """GET /api/gpu/{id}/console - Get GPU instance console"""
        return self._http.get(f"/api/gpu/{gpu_id}/console")
