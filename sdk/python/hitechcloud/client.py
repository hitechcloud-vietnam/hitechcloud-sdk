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
from .resources.cloud_service import CloudServiceResource
from .resources.network_services import NetworkServicesResource
from .resources.service_status import ServiceStatusResource
from .resources.bare_metal import BareMetalResource
from .resources.collocation import CollocationResource
from .resources.vcloudstack import VCloudStackResource
from .resources.hosting import HostingResource
from .resources.location_v2 import LocationV2Resource
from .resources.cloud_instance import CloudInstanceResource
from .resources.cloud_vm import CloudVmResource
from .resources.affiliates_advanced import AffiliatesAdvancedResource
from .resources.ai_factory import AiFactoryResource
from .resources.passkey_v2 import PasskeyV2Resource
from .resources.email_mfa_v2 import EmailMfaV2Resource
from .resources.vneidekyc import VNeIdeKycResource
from .resources.will_expired import WillExpiredResource
from .resources.url_shortener import UrlShortenerResource
from .resources.proxmox_backup import ProxmoxBackupResource
from .resources.ceph_s3 import CephS3Resource
from .resources.pmg import PmgResource
from .resources.proxmox import ProxmoxResource
from .resources.ipam import IpamResource
from .resources.partner import PartnerResource

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
        self.cloud_service = CloudServiceResource(self._http)
        self.network_services = NetworkServicesResource(self._http)
        self.service_status = ServiceStatusResource(self._http)
        self.bare_metal = BareMetalResource(self._http)
        self.collocation = CollocationResource(self._http)
        self.vcloudstack = VCloudStackResource(self._http)
        self.hosting = HostingResource(self._http)
        self.location_v2 = LocationV2Resource(self._http)
        self.cloud_instance = CloudInstanceResource(self._http)
        self.cloud_vm = CloudVmResource(self._http)
        self.affiliates_advanced = AffiliatesAdvancedResource(self._http)
        self.ai_factory = AiFactoryResource(self._http)
        self.passkey_v2 = PasskeyV2Resource(self._http)
        self.email_mfa_v2 = EmailMfaV2Resource(self._http)
        self.vneidekyc = VNeIdeKycResource(self._http)
        self.will_expired = WillExpiredResource(self._http)
        self.url_shortener = UrlShortenerResource(self._http)
        self.proxmox_backup = ProxmoxBackupResource(self._http)
        self.ceph_s3 = CephS3Resource(self._http)
        self.pmg = PmgResource(self._http)
        self.proxmox = ProxmoxResource(self._http)
        self.ipam = IpamResource(self._http)
        self.partner = PartnerResource(self._http)

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

    def __repr__(self) -> str:
        return f"HiTechCloud(base_url={self._http.base_url!r})"

    def __enter__(self):
        return self

    def __exit__(self, *args):
        pass
