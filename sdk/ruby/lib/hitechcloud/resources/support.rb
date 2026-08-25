module HiTechCloud
  module Resources
    class Support < Base

        # List tickets
        def tickets
          @http.get("/api/tickets")
        end

        # Create ticket
        def create_ticket(data)
          @http.post("/api/tickets", data)
        end

        # Get ticket
        def ticket(number)
          @http.get("/api/tickets/%{number}" % { number: number })
        end

        # Reply to ticket
        def reply_ticket(number, data)
          @http.post("/api/tickets/%{number}" % { number: number }, data)
        end

        # Get attachment
        def ticket_attachment(file)
          @http.get("/api/ticket/attachment/%{file}" % { file: file })
        end

        # Open ticket
        def open_ticket(number)
          @http.put("/api/tickets/%{number}/open" % { number: number })
        end

        # Close ticket
        def close_ticket(number)
          @http.put("/api/tickets/%{number}/close" % { number: number })
        end

        # Get departments
        def departments
          @http.get("/api/ticket/departments")
        end

        # List news
        def news
          @http.get("/api/news")
        end

        # Get news item
        def news_item(news_id)
          @http.get("/api/news/%{news_id}" % { news_id: news_id })
        end

        # List knowledgebase
        def knowledgebase
          @http.get("/api/knowledgebase")
        end

        # Get KB category
        def knowledgebase_category(category_id)
          @http.get("/api/knowledgebase/%{category_id}" % { category_id: category_id })
        end

        # Get KB article
        def knowledgebase_article(article_id)
          @http.get("/api/knowledgebase/article/%{article_id}" % { article_id: article_id })
      end
    end
  end
end
