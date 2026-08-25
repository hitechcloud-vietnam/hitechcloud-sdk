module HiTechCloud
  module Resources
    class Ipam < Base

        # Get IPs
        def ips(id)
          @http.get("/api/service/%{id}/htcipam/ips" % { id: id })
        end

        # Get subnets
        def subnets(id)
          @http.get("/api/service/%{id}/htcipam/subnets" % { id: id })
        end

        # Get rDNS
        def rdns(id)
          @http.get("/api/service/%{id}/htcipam/rdns" % { id: id })
        end

        # Set rDNS
        def set_rdns(id, data)
          @http.post("/api/service/%{id}/htcipam/rdns" % { id: id }, data)
      end
    end
  end
end
