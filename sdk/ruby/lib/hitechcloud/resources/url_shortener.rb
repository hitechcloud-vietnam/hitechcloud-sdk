module HiTechCloud
  module Resources
    class UrlShortener < Base

        # Shorten URL
        def shorten(data)
          @http.post("/api/url-shortener/shorten", data)
        end

        # List links
        def links
          @http.get("/api/url-shortener/links")
        end

        # Get config
        def config
          @http.get("/api/url-shortener/config")
        end

        # Get stats
        def stats
          @http.get("/api/url-shortener/stats")
        end

        # Get link
        def link(id)
          @http.get("/api/url-shortener/links/%{id}" % { id: id })
        end

        # Delete link
        def delete_link(id)
          @http.delete("/api/url-shortener/links/%{id}" % { id: id })
      end
    end
  end
end
