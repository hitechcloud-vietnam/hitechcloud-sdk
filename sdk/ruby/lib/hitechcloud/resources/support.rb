# frozen_string_literal: true

module HiTechCloud
  module Resources
    class Support < Base
      def list_departments
        @http.get('/api/support/departments')
      end

      def list_tickets(params = {})
        @http.get('/api/support/tickets', params: params)
      end

      def get_ticket(ticket_id)
        @http.get("/api/support/tickets/#{ticket_id}")
      end

      def create_ticket(data)
        @http.post('/api/support/tickets', body: data)
      end

      def reply_ticket(ticket_id, message)
        @http.post("/api/support/tickets/#{ticket_id}", body: { message: message })
      end

      def close_ticket(ticket_id)
        @http.post("/api/support/tickets/#{ticket_id}/close")
      end

      def list_news(params = {})
        @http.get('/api/support/news', params: params)
      end

      def get_news(news_id)
        @http.get("/api/support/news/#{news_id}")
      end

      def list_kb_categories
        @http.get('/api/support/kb/categories')
      end

      def list_kb_articles(params = {})
        @http.get('/api/support/kb/articles', params: params)
      end

      def get_kb_article(article_id)
        @http.get("/api/support/kb/articles/#{article_id}")
      end

      def search_kb(query)
        @http.get('/api/support/kb/search', params: { query: query })
      end

      def list_announcements(params = {})
        @http.get('/api/support/announcements', params: params)
      end
    end
  end
end
