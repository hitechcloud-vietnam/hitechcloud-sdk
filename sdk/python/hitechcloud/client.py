"""HiTechCloud SDK - Main Client"""

from typing import Optional

from .http_client import HTTPClient
from .resources.auth import AuthResource
from .resources.users import UsersResource
from .resources.services import ServicesResource
from .resources.domains import DomainsResource
from .resources.dns_manage import DnsManageResource
from .resources.dns import DnsResource
from .resources.ssl import SSLResource
from .resources.billing import BillingResource
from .resources.support import SupportResource
from .resources.contacts import ContactsResource
from .resources.cart import CartResource
from .resources.notifications import NotificationsResource
from .resources.affiliate import AffiliateResource
from .resources.cloud_gpu import CloudGpuResource
from .resources.virtualizor import VirtualizorResource


class HiTechCloud:
    """
    HiTechCloud UserAPI Client

    Args:
        base_url: API base URL (default: https://api.hitechcloud.vn)
        username: Email for auto-login
        password: Password for auto-login
        token: Existing auth token (skip login)
        timeout: Request timeout in seconds (default: 30)
        max_retries: Max retry attempts (default: 3)

    Usage:
        client = HiTechCloud(
            base_url="https://ote.hitechcloud.vn",
            username="demo@ote.hitechcloud.vn",
            password="W9vTyPuJLyTVHAJ3Fe3Coi2h"
        )

        services = client.services.list()
        domain = client.domains.get(123)
    """

    PRODUCTION_URL = "https://api.hitechcloud.vn"
    OTE_URL = "https://ote.hitechcloud.vn"

    def __init__(
        self,
        base_url: str = "https://api.hitechcloud.vn",
        username: str = None,
        password: str = None,
        token: str = None,
        timeout: int = 30,
        max_retries: int = 3,
    ):
        self._http = HTTPClient(
            base_url=base_url,
            timeout=timeout,
            max_retries=max_retries,
        )

        # Authenticate
        if token:
            self._http.set_token(token)
        elif username and password:
            self.login(username, password)

        # Initialize resource groups
        self.auth = AuthResource(self._http)
        self.users = UsersResource(self._http)
        self.services = ServicesResource(self._http)
        self.domains = DomainsResource(self._http)
        self.dns_manage = DnsManageResource(self._http)
        self.dns = DnsResource(self._http)
        self.ssl = SSLResource(self._http)
        self.billing = BillingResource(self._http)
        self.support = SupportResource(self._http)
        self.contacts = ContactsResource(self._http)
        self.cart = CartResource(self._http)
        self.notifications = NotificationsResource(self._http)
        self.affiliate = AffiliateResource(self._http)
        self.cloud_gpu = CloudGpuResource(self._http)
        self.virtualizor = VirtualizorResource(self._http)

    def login(self, username: str, password: str) -> dict:
        """Authenticate and store token"""
        result = self.auth.login(username, password)
        token = result.get("token")
        if token:
            self._http.set_token(token)
        return result

    def logout(self) -> dict:
        """Logout and clear token"""
        result = self.auth.logout()
        self._http.clear_token()
        return result

    def close(self):
        """Close the client and HTTP session"""
        self._http.close()

    def __enter__(self):
        return self

    def __exit__(self, *args):
        self.close()

    def __repr__(self):
        return f"HiTechCloud(base_url='{self._http.base_url}')"
