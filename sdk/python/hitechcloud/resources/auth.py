"""Account Authentication resource (6 endpoints)"""

from .base import BaseResource


class AuthResource(BaseResource):
    """Account Authentication: login, logout, token refresh, signup, password reset"""

    def login(self, username: str, password: str) -> dict:
        """POST /api/login - Authenticate and obtain access token"""
        return self._http.post("/api/login", {
            "username": username,
            "password": password,
        })

    def logout(self) -> dict:
        """POST /api/logout - Invalidate current access token"""
        return self._http.post("/api/logout")

    def refresh_token(self, refresh_token: str) -> dict:
        """POST /api/token - Generate new token using refresh token"""
        return self._http.post("/api/token", {
            "refresh_token": refresh_token,
        })

    def revoke_token(self) -> dict:
        """POST /api/revoke - Invalidate authorization and refresh token"""
        return self._http.post("/api/revoke")

    def password_reset(self, email: str) -> dict:
        """POST /api/passwordreset - Request password reset email"""
        return self._http.post("/api/passwordreset", {
            "email": email,
        })

    def signup(self, email: str, password: str, **kwargs) -> dict:
        """POST /api/signup - Create new account"""
        data = {"email": email, "password": password, **kwargs}
        return self._http.post("/api/signup", data)
