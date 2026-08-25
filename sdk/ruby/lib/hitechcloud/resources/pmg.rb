module HiTechCloud
  module Resources
    class Pmg < Base

        # Get config
        def config(id)
          @http.get("/api/service/%{id}/htcpmg/config" % { id: id })
        end

        # Add domain
        def add_domain(id, data)
          @http.post("/api/service/%{id}/htcpmg/domains" % { id: id }, data)
        end

        # Add transport
        def add_transport(id, data)
          @http.post("/api/service/%{id}/htcpmg/transport" % { id: id }, data)
        end

        # Get stats
        def stats(id)
          @http.get("/api/service/%{id}/htcpmg/stats" % { id: id })
      end
    end
  end
end
