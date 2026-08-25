module HiTechCloud
  module Resources
    class Services < Base

        # List services
        def services
          @http.get("/api/service")
        end

        # Get service
        def service(id)
          @http.get("/api/service/%{id}" % { id: id })
        end

        # Get service methods
        def methods(id)
          @http.get("/api/service/%{id}/methods" % { id: id })
        end

        # Cancel service
        def cancel(id, data)
          @http.post("/api/service/%{id}/cancel" % { id: id }, data)
        end

        # Get label
        def label(id)
          @http.get("/api/service/%{id}/label" % { id: id })
        end

        # Set label
        def set_label(id, data)
          @http.post("/api/service/%{id}/label" % { id: id }, data)
        end

        # Renew service
        def renew(id, data)
          @http.post("/api/service/%{id}/renew" % { id: id }, data)
        end

        # Get cycle
        def cycle(id)
          @http.get("/api/service/%{id}/cycle" % { id: id })
        end

        # Set cycle
        def set_cycle(id, data)
          @http.post("/api/service/%{id}/cycle" % { id: id }, data)
      end
    end
  end
end
