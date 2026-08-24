"""DNS resource (8 endpoints)"""

from . import BaseResource


class DnsResource(BaseResource):
    """DNS: zones and records management for services"""

    def list(self) -> dict:
        """GET /api/dns - List all DNS zones"""
        return self._http.get("/api/dns")

    def list_for_service(self, service_id: int) -> dict:
        """GET /api/service/{service_id}/dns - List DNS zones for service"""
        return self._http.get(f"/api/service/{service_id}/dns")

    def add_zone(self, service_id: int, domain: str) -> dict:
        """POST /api/service/{service_id}/dns - Create DNS zone"""
        return self._http.post(f"/api/service/{service_id}/dns", {"domain": domain})

    def get_zone(self, service_id: int, zone_id: int) -> dict:
        """GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details"""
        return self._http.get(f"/api/service/{service_id}/dns/{zone_id}")

    def delete_zone(self, service_id: int, zone_id: int) -> dict:
        """DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone"""
        return self._http.delete(f"/api/service/{service_id}/dns/{zone_id}")

    def add_record(self, service_id: int, zone_id: int, name: str,
                   record_type: str, content: str, ttl: int = 3600,
                   priority: int = None) -> dict:
        """POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record"""
        data = {
            "name": name,
            "type": record_type,
            "content": content,
            "ttl": ttl,
        }
        if priority is not None:
            data["priority"] = priority
        return self._http.post(
            f"/api/service/{service_id}/dns/{zone_id}/records", data
        )

    def edit_record(self, service_id: int, zone_id: int, record_id: int,
                    **kwargs) -> dict:
        """PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record"""
        return self._http.put(
            f"/api/service/{service_id}/dns/{zone_id}/records/{record_id}", kwargs
        )

    def delete_record(self, service_id: int, zone_id: int, record_id: int) -> dict:
        """DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record"""
        return self._http.delete(
            f"/api/service/{service_id}/dns/{zone_id}/records/{record_id}"
        )
