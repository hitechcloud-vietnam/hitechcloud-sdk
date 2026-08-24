"""HiTechCloud SDK HTTP Client"""

import json
import time
from typing import Any, Dict, Optional, Union
from urllib.parse import urljoin

import requests

from .exceptions import HiTechCloudError, RateLimitError, ERROR_MAP


class HTTPClient:
    """Low-level HTTP client for HiTechCloud API"""

    def __init__(
        self,
        base_url: str = "https://api.hitechcloud.vn",
        timeout: int = 30,
        max_retries: int = 3,
    ):
        self.base_url = base_url.rstrip("/")
        self.timeout = timeout
        self.max_retries = max_retries
        self.session = requests.Session()
        self.session.headers.update({
            "Content-Type": "application/json",
            "Accept": "application/json",
            "User-Agent": "HiTechCloud-Python-SDK/1.0.0",
        })

    def set_token(self, token: str):
        """Set authorization token"""
        self.session.headers["Authorization"] = f"Bearer {token}"

    def clear_token(self):
        """Remove authorization token"""
        self.session.headers.pop("Authorization", None)

    def request(
        self,
        method: str,
        path: str,
        params: Dict = None,
        data: Dict = None,
        json_data: Dict = None,
        headers: Dict = None,
    ) -> Any:
        """Make HTTP request with retry logic"""
        url = urljoin(self.base_url + "/", path.lstrip("/"))
        last_error = None

        for attempt in range(self.max_retries):
            try:
                response = self.session.request(
                    method=method,
                    url=url,
                    params=params,
                    data=data,
                    json=json_data,
                    headers=headers,
                    timeout=self.timeout,
                )

                if response.status_code == 429:
                    retry_after = int(response.headers.get("Retry-After", 60))
                    if attempt < self.max_retries - 1:
                        time.sleep(retry_after)
                        continue
                    raise RateLimitError(
                        "Rate limit exceeded",
                        status_code=429,
                        retry_after=retry_after,
                    )

                if response.status_code >= 400:
                    self._raise_error(response)

                if response.status_code == 204:
                    return None

                return response.json()

            except requests.exceptions.ConnectionError as e:
                last_error = e
                if attempt < self.max_retries - 1:
                    time.sleep(2 ** attempt)
                    continue
                raise HiTechCloudError(f"Connection failed: {e}")

            except requests.exceptions.Timeout as e:
                last_error = e
                if attempt < self.max_retries - 1:
                    time.sleep(2 ** attempt)
                    continue
                raise HiTechCloudError(f"Request timed out: {e}")

        if last_error:
            raise HiTechCloudError(f"Request failed after {self.max_retries} retries: {last_error}")

    def _raise_error(self, response: requests.Response):
        """Parse error response and raise appropriate exception"""
        try:
            body = response.json()
            errors = body.get("error", [])
            if isinstance(errors, str):
                errors = [errors]
            message = "; ".join(errors) if errors else f"HTTP {response.status_code}"
        except (json.JSONDecodeError, ValueError):
            message = f"HTTP {response.status_code}: {response.text[:200]}"
            errors = [message]

        error_class = ERROR_MAP.get(response.status_code, HiTechCloudError)
        kwargs = {
            "message": message,
            "status_code": response.status_code,
            "errors": errors,
        }

        if response.status_code == 429:
            kwargs["retry_after"] = int(response.headers.get("Retry-After", 60))

        raise error_class(**kwargs)

    def get(self, path: str, params: Dict = None) -> Any:
        return self.request("GET", path, params=params)

    def post(self, path: str, data: Dict = None) -> Any:
        return self.request("POST", path, json_data=data)

    def put(self, path: str, data: Dict = None) -> Any:
        return self.request("PUT", path, json_data=data)

    def delete(self, path: str) -> Any:
        return self.request("DELETE", path)

    def close(self):
        """Close the HTTP session"""
        self.session.close()
