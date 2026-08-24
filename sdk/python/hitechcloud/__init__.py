"""
HiTechCloud UserAPI SDK for Python

Official SDK for the HiTechCloud User API (https://docs.hitechcloud.vn).
348 endpoints across 38 groups.

Usage:
    from hitechcloud import HiTechCloud

    client = HiTechCloud(
        base_url="https://ote.hitechcloud.vn",
        username="demo@ote.hitechcloud.vn",
        password="W9vTyPuJLyTVHAJ3Fe3Coi2h"
    )

    # List services
    services = client.services.list()

    # Get domain details
    domain = client.domains.get(123)
"""

__version__ = "1.0.0"
__author__ = "HiTechCloud"
__email__ = "support@hitechcloud.vn"

from .client import HiTechCloud
from .exceptions import (
    HiTechCloudError,
    AuthenticationError,
    AuthorizationError,
    NotFoundError,
    RateLimitError,
    ValidationError,
    ServerError,
)

__all__ = [
    "HiTechCloud",
    "HiTechCloudError",
    "AuthenticationError",
    "AuthorizationError",
    "NotFoundError",
    "RateLimitError",
    "ValidationError",
    "ServerError",
]
