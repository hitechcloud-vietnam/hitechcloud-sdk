module HiTechCloud
  module Resources
    class Domains < Base

        # WHOIS lookup
        def whois(domain)
          @http.get("/api/whois/%{domain}" % { domain: domain })
        end

        # List domains
        def domains
          @http.get("/api/domain")
        end

        # Get domain
        def domain(id)
          @http.get("/api/domain/%{id}" % { id: id })
        end

        # Get domain by name
        def domain_by_name(name)
          @http.get("/api/domain/name/%{name}" % { name: name })
        end

        # Get nameservers
        def nameservers(id)
          @http.get("/api/domain/%{id}/ns" % { id: id })
        end

        # Update nameservers
        def update_nameservers(id, data)
          @http.put("/api/domain/%{id}/ns" % { id: id }, data)
        end

        # Get EPP code
        def epp_code(id)
          @http.get("/api/domain/%{id}/epp" % { id: id })
        end

        # Sync domain
        def sync_domain(id)
          @http.get("/api/domain/%{id}/sync" % { id: id })
        end

        # Get reglock
        def reglock(id)
          @http.get("/api/domain/%{id}/reglock" % { id: id })
        end

        # Update reglock
        def update_reglock(id, data)
          @http.put("/api/domain/%{id}/reglock" % { id: id }, data)
        end

        # Update ID protection
        def id_protection(id, data)
          @http.put("/api/domain/%{id}/idprotection" % { id: id }, data)
        end

        # Get domain contacts
        def domain_contacts(id)
          @http.get("/api/domain/%{id}/contact" % { id: id })
        end

        # Update domain contacts
        def update_contacts(id, data)
          @http.put("/api/domain/%{id}/contact" % { id: id }, data)
        end

        # Get email forwarding
        def email_forwarding(id)
          @http.get("/api/domain/%{id}/email/forwarding" % { id: id })
        end

        # Update email forwarding
        def update_email_forwarding(id, data)
          @http.put("/api/domain/%{id}/email/forwarding" % { id: id }, data)
        end

        # Check availability
        def availability(domain)
          @http.get("/api/domain/availability/%{domain}" % { domain: domain })
        end

        # List domain orders
        def orders
          @http.get("/api/domain/order")
        end

        # Create domain order
        def create_order(data)
          @http.post("/api/domain/order", data)
        end

        # Get order form
        def order_form(id)
          @http.get("/api/domain/order/%{id}/form" % { id: id })
        end

        # Renew domain
        def renew_domain(id, data)
          @http.post("/api/domain/%{id}/renew" % { id: id }, data)
        end

        # WHOIS lookup v2
        def whois_lookup(domain)
          @http.get("/api/whoislookup/%{domain}" % { domain: domain })
        end

        # Get domain documents
        def documents(id)
          @http.get("/api/domain/%{id}/documents" % { id: id })
      end
    end
  end
end
