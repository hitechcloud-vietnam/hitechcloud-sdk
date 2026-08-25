module HiTechCloud
  # Hosting resource
  class HostingResource < BaseResource

    # Get reinstall info
    def reinstall(id)
      @http.get("/api/service/%{id}/reinstall" % { id: id })
    end

    # Reinstall
    def do_reinstall(id, data)
      @http.post("/api/service/%{id}/reinstall" % { id: id }, data)
    end

    # Get status
    def status(id)
      @http.get("/api/service/%{id}/status" % { id: id })
    end

    # Get bandwidth graphs
    def bandwidth_graphs(id)
      @http.get("/api/service/%{id}/bandwidth-graphs" % { id: id })
    end

    # Get bandwidth
    def bandwidth(id)
      @http.get("/api/service/%{id}/bandwidth" % { id: id })
    end

    # Reset password
    def reset_password(id, data)
      @http.post("/api/service/%{id}/reset" % { id: id }, data)
    end

  end
end
