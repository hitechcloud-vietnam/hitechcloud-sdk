module HiTechCloud
  # WillExpired resource
  class WillExpiredResource < BaseResource

    # List expiring items
    def list
      @http.get("/api/willexpired")
    end

    # Get summary
    def summary
      @http.get("/api/willexpired/summary")
    end

    # Get config
    def config
      @http.get("/api/willexpired/config")
    end

    # Get invoices
    def invoices
      @http.get("/api/willexpired/invoices")
    end

    # Get requests
    def requests
      @http.get("/api/willexpired/requests")
    end

    # Export
    def export
      @http.get("/api/willexpired/export")
    end

    # Get item
    def item(type, id)
      @http.get("/api/willexpired/%{type}/%{id}" % { type: type, id: id })
    end

    # Renew
    def renew(type, id, data)
      @http.post("/api/willexpired/%{type}/%{id}/renew" % { type: type, id: id }, data)
    end

    # Get autorenew
    def autorenew(type, id)
      @http.get("/api/willexpired/%{type}/%{id}/autorenew" % { type: type, id: id })
    end

    # Set autorenew
    def set_autorenew(type, id, data)
      @http.put("/api/willexpired/%{type}/%{id}/autorenew" % { type: type, id: id }, data)
    end

  end
end
