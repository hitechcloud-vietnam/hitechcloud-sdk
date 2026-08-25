"""Tests for HiTechCloud Python SDK"""

import pytest
import responses
from hitechcloud import HiTechCloud, AuthenticationError, NotFoundError, RateLimitError


BASE_URL = "https://api.hitechcloud.vn"


@responses.activate
def test_login():
    """Test login flow"""
    responses.post(
        f"{BASE_URL}/api/login",
        json={"token": "test_token_123", "user": {"id": 1, "email": "test@example.com"}},
        status=200,
    )
    client = HiTechCloud(base_url=BASE_URL, username="test@example.com", password="pass")
    assert client._http._token == "test_token_123"


@responses.activate
def test_token_auth():
    """Test token-based authentication"""
    client = HiTechCloud(base_url=BASE_URL, token="my_token")
    assert client._http._token == "my_token"


@responses.activate
def test_services_list():
    """Test listing services"""
    responses.post(
        f"{BASE_URL}/api/login",
        json={"token": "tok", "user": {}},
        status=200,
    )
    responses.get(
        f"{BASE_URL}/api/service",
        json={"data": [{"id": 1, "name": "VPS Basic"}], "meta": {"total": 1}},
        status=200,
    )
    client = HiTechCloud(base_url=BASE_URL, token="tok")
    result = client.services.list()
    assert len(result["data"]) == 1
    assert result["data"][0]["name"] == "VPS Basic"


@responses.activate
def test_domains_whois():
    """Test WHOIS lookup"""
    responses.get(
        f"{BASE_URL}/api/whois/example.com",
        json={"domain": "example.com", "available": False},
        status=200,
    )
    client = HiTechCloud(base_url=BASE_URL, token="tok")
    result = client.domains.whois("example.com")
    assert result["domain"] == "example.com"


@responses.activate
def test_authentication_error():
    """Test 401 error handling"""
    responses.post(
        f"{BASE_URL}/api/login",
        json={"error": "Invalid credentials"},
        status=401,
    )
    with pytest.raises(AuthenticationError):
        HiTechCloud(base_url=BASE_URL, username="bad@example.com", password="wrong")


@responses.activate
def test_not_found_error():
    """Test 404 error handling"""
    responses.get(
        f"{BASE_URL}/api/service/99999",
        json={"error": "Not found"},
        status=404,
    )
    client = HiTechCloud(base_url=BASE_URL, token="tok")
    with pytest.raises(NotFoundError):
        client.services.get(99999)


@responses.activate
def test_rate_limit_error():
    """Test 429 error handling"""
    responses.get(
        f"{BASE_URL}/api/service",
        json={"error": "Too many requests"},
        status=429,
        headers={"Retry-After": "60"},
    )
    client = HiTechCloud(base_url=BASE_URL, token="tok")
    with pytest.raises(RateLimitError) as exc_info:
        client.services.list()
    assert exc_info.value.retry_after == 60


@responses.activate
def test_billing_balance():
    """Test get balance"""
    responses.get(
        f"{BASE_URL}/api/balance",
        json={"balance": "1000000", "currency": "VND"},
        status=200,
    )
    client = HiTechCloud(base_url=BASE_URL, token="tok")
    result = client.billing.get_balance()
    assert result["balance"] == "1000000"


@responses.activate
def test_support_tickets():
    """Test list tickets"""
    responses.get(
        f"{BASE_URL}/api/tickets",
        json={"data": [{"number": "TKT-001", "subject": "Help"}], "meta": {"total": 1}},
        status=200,
    )
    client = HiTechCloud(base_url=BASE_URL, token="tok")
    result = client.support.list_tickets()
    assert result["data"][0]["number"] == "TKT-001"


@responses.activate
def test_context_manager():
    """Test context manager usage"""
    with HiTechCloud(base_url=BASE_URL, token="tok") as client:
        assert client is not None


def test_repr():
    """Test string representation"""
    client = HiTechCloud(base_url=BASE_URL, token="tok")
    assert "api.hitechcloud.vn" in repr(client)
