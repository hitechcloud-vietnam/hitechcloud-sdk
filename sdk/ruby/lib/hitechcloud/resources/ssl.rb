module HiTechCloud
  module Resources
    class Ssl < Base

        # List certificates
        def certificates
          @http.get("/api/certificate")
        end

        # Get certificate
        def certificate(id)
          @http.get("/api/certificate/%{id}" % { id: id })
        end

        # Get certificate CRT
        def certificate_crt(id)
          @http.get("/api/certificate/%{id}/crt" % { id: id })
        end

        # List SSL orders
        def orders
          @http.get("/api/certificate/order")
        end

        # Create SSL order
        def create_order(data)
          @http.post("/api/certificate/order", data)
        end

        # Get order software
        def order_software(product_id)
          @http.get("/api/certificate/order/%{product_id}/software" % { product_id: product_id })
      end
    end
  end
end
