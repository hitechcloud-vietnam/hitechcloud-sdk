module HiTechCloud
  module Resources
    class Collocation < Base

        # Get PDU info
        def pdu(id)
          @http.get("/api/service/%{id}/pdu" % { id: id })
        end

        # Get PDU port
        def pdu_port(id, port)
          @http.get("/api/service/%{id}/pdu/%{port}" % { id: id, port: port })
        end

        # Toggle PDU port
        def toggle_pdu_port(id, port, data)
          @http.post("/api/service/%{id}/pdu/%{port}" % { id: id, port: port }, data)
      end
    end
  end
end
