module HiTechCloud
  module Resources
    class Billing < Base

        # Get balance
        def balance
          @http.get("/api/balance")
        end

        # List invoices
        def invoices
          @http.get("/api/invoice")
        end

        # Get invoice
        def invoice(id)
          @http.get("/api/invoice/%{id}" % { id: id })
        end

        # Credit invoice
        def invoice_credit(id, data)
          @http.post("/api/invoice/%{id}/credit" % { id: id }, data)
        end

        # List payments
        def payments
          @http.get("/api/payment")
        end

        # Get payment fees
        def payment_fees
          @http.get("/api/payment/fees")
      end
    end
  end
end
