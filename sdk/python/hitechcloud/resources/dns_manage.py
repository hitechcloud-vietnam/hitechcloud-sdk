"""DNS Manage resource (10 endpoints)"""

from . import BaseResource


class DnsManageResource(BaseResource):
    """DNS Manage: domain DNS records, DNSSEC, nameserver registration"""

    def get_records(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/dns - List DNS records"""
        return self._http.get(f"/api/domain/{domain_id}/dns")

    def create_record(self, domain_id: int, name: str, record_type: str,
                      content: str, ttl: int = 3600, priority: int = None) -> dict:
        """POST /api/domain/{id}/dns - Create DNS record"""
        data = {
            "name": name,
            "type": record_type,
            "content": content,
            "ttl": ttl,
        }
        if priority is not None:
            data["priority"] = priority
        return self._http.post(f"/api/domain/{domain_id}/dns", data)

    def update_record(self, domain_id: int, index: int, **kwargs) -> dict:
        """PUT /api/domain/{id}/dns/{index} - Update DNS record"""
        return self._http.put(f"/api/domain/{domain_id}/dns/{index}", kwargs)

    def delete_record(self, domain_id: int, index: int) -> dict:
        """DELETE /api/domain/{id}/dns/{index} - Remove DNS record"""
        return self._http.delete(f"/api/domain/{domain_id}/dns/{index}")

    def get_record_types(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/dns/types - List supported record types"""
        return self._http.get(f"/api/domain/{domain_id}/dns/types")

    def get_dnssec_flags(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags"""
        return self._http.get(f"/api/domain/{domain_id}/dnssec/flags")

    def get_dnssec_records(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/dnssec - Get DNSSEC records"""
        return self._http.get(f"/api/domain/{domain_id}/dnssec")

    def create_dnssec_record(self, domain_id: int, **kwargs) -> dict:
        """POST /api/domain/{id}/dnssec - Create DNSSEC record"""
        return self._http.post(f"/api/domain/{domain_id}/dnssec", kwargs)

    def delete_dnssec_record(self, domain_id: int) -> dict:
        """DELETE /api/domain/{id}/dnssec - Remove DNSSEC record"""
        return self._http.delete(f"/api/domain/{domain_id}/dnssec")

    def register_nameserver(self, domain_id: int, nameserver: str, ip: str) -> dict:
        """POST /api/domain/{id}/reg - Register domain nameserver"""
        return self._http.post(f"/api/domain/{domain_id}/reg", {
            "nameserver": nameserver,
            "ip": ip,
        })
