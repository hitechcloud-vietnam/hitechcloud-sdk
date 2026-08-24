"""Base resource class and all resource modules"""

from .base import BaseResource
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
from .cloud_service import CloudServiceResource
from .network_services import NetworkServicesResource
from .service_status import ServiceStatusResource
from .bare_metal import BareMetalResource
from .collocation import CollocationResource
from .vcloudstack import VCloudStackResource
from .hosting import HostingResource
from .location_v2 import LocationV2Resource
from .cloud_instance import CloudInstanceResource
from .cloud_vm import CloudVmResource
from .affiliates_advanced import AffiliatesAdvancedResource
from .ai_factory import AiFactoryResource
from .passkey_v2 import PasskeyV2Resource
from .email_mfa_v2 import EmailMfaV2Resource
from .vneidekyc import VNeIdeKycResource
from .will_expired import WillExpiredResource
from .url_shortener import UrlShortenerResource
from .proxmox_backup import ProxmoxBackupResource
from .ceph_s3 import CephS3Resource
from .pmg import PmgResource
from .proxmox import ProxmoxResource
from .ipam import IpamResource
from .partner import PartnerResource

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
    "CloudServiceResource",
    "NetworkServicesResource",
    "ServiceStatusResource",
    "BareMetalResource",
    "CollocationResource",
    "VCloudStackResource",
    "HostingResource",
    "LocationV2Resource",
    "CloudInstanceResource",
    "CloudVmResource",
    "AffiliatesAdvancedResource",
    "AiFactoryResource",
    "PasskeyV2Resource",
    "EmailMfaV2Resource",
    "VNeIdeKycResource",
    "WillExpiredResource",
    "UrlShortenerResource",
    "ProxmoxBackupResource",
    "CephS3Resource",
    "PmgResource",
    "ProxmoxResource",
    "IpamResource",
    "PartnerResource",
]
