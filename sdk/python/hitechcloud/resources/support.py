"""Support resource (13 endpoints)"""

from . import BaseResource


class SupportResource(BaseResource):
    """Support: tickets, departments, news, knowledgebase"""

    def list_tickets(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/tickets - List support tickets"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/tickets", params)

    def create_ticket(self, subject: str, message: str, department_id: int,
                      priority: str = None, service_id: int = None) -> dict:
        """POST /api/tickets - Create new support ticket"""
        data = {
            "subject": subject,
            "message": message,
            "department_id": department_id,
        }
        if priority:
            data["priority"] = priority
        if service_id is not None:
            data["service_id"] = service_id
        return self._http.post("/api/tickets", data)

    def get_ticket(self, ticket_number: str) -> dict:
        """GET /api/tickets/{number} - Get ticket details with replies"""
        return self._http.get(f"/api/tickets/{ticket_number}")

    def reply(self, ticket_number: str, message: str) -> dict:
        """POST /api/tickets/{number} - Reply to ticket"""
        return self._http.post(f"/api/tickets/{ticket_number}", {"message": message})

    def get_attachment(self, file: str) -> dict:
        """GET /api/ticket/attachment/{file} - Get ticket attachment"""
        return self._http.get(f"/api/ticket/attachment/{file}")

    def reopen(self, ticket_number: str) -> dict:
        """PUT /api/tickets/{number}/open - Re-open closed ticket"""
        return self._http.put(f"/api/tickets/{ticket_number}/open")

    def close(self, ticket_number: str) -> dict:
        """PUT /api/tickets/{number}/close - Close ticket"""
        return self._http.put(f"/api/tickets/{ticket_number}/close")

    def list_departments(self) -> dict:
        """GET /api/ticket/departments - List ticket departments"""
        return self._http.get("/api/ticket/departments")

    def list_news(self) -> dict:
        """GET /api/news - List news"""
        return self._http.get("/api/news")

    def get_news(self, news_id: int) -> dict:
        """GET /api/news/{news_id} - Get news item details"""
        return self._http.get(f"/api/news/{news_id}")

    def list_knowledgebase_categories(self) -> dict:
        """GET /api/knowledgebase - List knowledgebase categories"""
        return self._http.get("/api/knowledgebase")

    def get_knowledgebase_category(self, category_id: int) -> dict:
        """GET /api/knowledgebase/{category_id} - Get category with articles"""
        return self._http.get(f"/api/knowledgebase/{category_id}")

    def get_knowledgebase_article(self, article_id: int) -> dict:
        """GET /api/knowledgebase/article/{article_id} - Get article details"""
        return self._http.get(f"/api/knowledgebase/article/{article_id}")
