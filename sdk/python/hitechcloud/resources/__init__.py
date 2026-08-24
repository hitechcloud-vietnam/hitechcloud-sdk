"""Base resource class and all resource modules"""

from .auth import AuthResource
from .users import UsersResource
from .services import ServicesResource
from .domains import DomainsResource
from .dns_manage import DnsManageResource
from .dns import DnsResource
from .ssl import SSLResource
from .billing import BillingResource
from .support import SupportResource
from .contacts import ContactsResource
from .cart import CartResource
from .notifications import NotificationsResource
from .affiliate import AffiliateResource
from .cloud_gpu import CloudGpuResource
from .virtualizor import VirtualizorResource


class BaseResource:
    """Base class for API resource groups"""

    def __init__(self, http_client):
        self._http = http_client


__all__ = [
    "BaseResource",
    "AuthResource",
    "UsersResource",
    "ServicesResource",
    "DomainsResource",
    "DnsManageResource",
    "DnsResource",
    "SSLResource",
    "BillingResource",
    "SupportResource",
    "ContactsResource",
    "CartResource",
    "NotificationsResource",
    "AffiliateResource",
    "CloudGpuResource",
    "VirtualizorResource",
]
