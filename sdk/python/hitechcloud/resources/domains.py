"""Domains resource (25 endpoints)"""

from . import BaseResource


class DomainsResource(BaseResource):
    """Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding"""

    def list(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/domain - List domains under your account"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/domain", params)

    def get(self, domain_id: int) -> dict:
        """GET /api/domain/{id} - Get domain details"""
        return self._http.get(f"/api/domain/{domain_id}")

    def get_by_name(self, name: str) -> dict:
        """GET /api/domain/name/{name} - Get domain details by name"""
        return self._http.get(f"/api/domain/name/{name}")

    def whois(self, domain: str) -> dict:
        """GET /api/whois/{domain} - WHOIS lookup"""
        return self._http.get(f"/api/whois/{domain}")

    def whois_lookup(self, domain: str) -> dict:
        """GET /api/whoislookup/{domain} - Perform WHOIS lookup"""
        return self._http.get(f"/api/whoislookup/{domain}")

    def check_availability(self, domain: str) -> dict:
        """GET /api/domain/availability/{domain} - Check domain availability"""
        return self._http.get(f"/api/domain/availability/{domain}")

    def get_nameservers(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/ns - Get domain nameservers"""
        return self._http.get(f"/api/domain/{domain_id}/ns")

    def update_nameservers(self, domain_id: int, ns1: str = None, ns2: str = None,
                           ns3: str = None, ns4: str = None) -> dict:
        """PUT /api/domain/{id}/ns - Update domain nameservers"""
        data = {}
        if ns1:
            data["ns1"] = ns1
        if ns2:
            data["ns2"] = ns2
        if ns3:
            data["ns3"] = ns3
        if ns4:
            data["ns4"] = ns4
        return self._http.put(f"/api/domain/{domain_id}/ns", data)

    def get_epp_code(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/epp - Get domain EPP code"""
        return self._http.get(f"/api/domain/{domain_id}/epp")

    def sync(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/sync - Synchronize domain"""
        return self._http.get(f"/api/domain/{domain_id}/sync")

    def get_lock(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/reglock - Get domain lock status"""
        return self._http.get(f"/api/domain/{domain_id}/reglock")

    def update_lock(self, domain_id: int, reglock: bool) -> dict:
        """PUT /api/domain/{id}/reglock - Update domain lock"""
        return self._http.put(f"/api/domain/{domain_id}/reglock", {"reglock": reglock})

    def update_id_protection(self, domain_id: int, idprotection: bool) -> dict:
        """PUT /api/domain/{id}/idprotection - Update ID protection"""
        return self._http.put(f"/api/domain/{domain_id}/idprotection", {
            "idprotection": idprotection,
        })

    def get_contact(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/contact - Get domain contact info"""
        return self._http.get(f"/api/domain/{domain_id}/contact")

    def update_contact(self, domain_id: int, **kwargs) -> dict:
        """PUT /api/domain/{id}/contact - Update domain contact info"""
        return self._http.put(f"/api/domain/{domain_id}/contact", kwargs)

    def get_email_forwarding(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/email/forwarding - Get email forwarding"""
        return self._http.get(f"/api/domain/{domain_id}/email/forwarding")

    def update_email_forwarding(self, domain_id: int, entries: list) -> dict:
        """PUT /api/domain/{id}/email/forwarding - Update email forwarding"""
        return self._http.put(f"/api/domain/{domain_id}/email/forwarding", {
            "entries": entries,
        })

    def get_available_tlds(self) -> dict:
        """GET /api/domain/order - List available TLDs"""
        return self._http.get("/api/domain/order")

    def order(self, domain: str, years: int = 1, **kwargs) -> dict:
        """POST /api/domain/order - Order new domain"""
        data = {"domain": domain, "years": years, **kwargs}
        return self._http.post("/api/domain/order", data)

    def renew(self, domain_id: int, years: int = 1) -> dict:
        """POST /api/domain/{id}/renew - Renew domain"""
        return self._http.post(f"/api/domain/{domain_id}/renew", {"years": years})

    def get_tld_form(self, tld_id: int) -> dict:
        """GET /api/domain/order/{id}/form - Get additional data for TLD"""
        return self._http.get(f"/api/domain/order/{tld_id}/form")

    def get_documents(self, domain_id: int) -> dict:
        """GET /api/domain/{id}/documents - Get domain documents"""
        return self._http.get(f"/api/domain/{domain_id}/documents")
