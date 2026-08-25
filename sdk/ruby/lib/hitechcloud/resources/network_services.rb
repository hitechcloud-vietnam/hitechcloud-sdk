module HiTechCloud
  # NetworkServices resource
  class NetworkServicesResource < BaseResource

    # Get IPs
    def ips(id)
      @http.get("/api/service/%{id}/ip" % { id: id })
    end

    # Get rDNS
    def rdns(id)
      @http.get("/api/service/%{id}/rdns" % { id: id })
    end

    # Set rDNS
    def set_rdns(id, data)
      @http.post("/api/service/%{id}/rdns" % { id: id }, data)
    end

  end
end
