"""HiTechCloud SDK Exceptions"""


class HiTechCloudError(Exception):
    """Base exception for HiTechCloud SDK"""

    def __init__(self, message: str, status_code: int = None, errors: list = None):
        self.message = message
        self.status_code = status_code
        self.errors = errors or []
        super().__init__(self.message)


class AuthenticationError(HiTechCloudError):
    """Raised when authentication fails (401)"""
    pass


class AuthorizationError(HiTechCloudError):
    """Raised when access is forbidden (403)"""
    pass


class NotFoundError(HiTechCloudError):
    """Raised when resource is not found (404)"""
    pass


class RateLimitError(HiTechCloudError):
    """Raised when rate limit is exceeded (429)"""

    def __init__(self, message: str, retry_after: int = None, **kwargs):
        super().__init__(message, **kwargs)
        self.retry_after = retry_after


class ValidationError(HiTechCloudError):
    """Raised when request validation fails (422)"""
    pass


class ServerError(HiTechCloudError):
    """Raised when server returns 5xx error"""
    pass


class NotImplementedError(HiTechCloudError):
    """Raised when endpoint is not implemented in OTE (501)"""
    pass


ERROR_MAP = {
    401: AuthenticationError,
    403: AuthorizationError,
    404: NotFoundError,
    422: ValidationError,
    429: RateLimitError,
    500: ServerError,
    501: NotImplementedError,
    503: ServerError,
}
