module HiTechCloud
  module Resources
    class BareMetal < Base

        # Get reinstall templates
        def reinstall_templates(id)
          @http.get("/api/service/%{id}/reinstall/templates" % { id: id })
        end

        # Cancel diagnostics
        def cancel_diag(id)
          @http.post("/api/service/%{id}/diag/cancel" % { id: id })
        end

        # Get diag templates
        def diag_templates(id)
          @http.get("/api/service/%{id}/diag/templates" % { id: id })
        end

        # Get diagnostics
        def diag(id)
          @http.get("/api/service/%{id}/diag" % { id: id })
        end

        # Run diagnostics
        def run_diag(id, data)
          @http.post("/api/service/%{id}/diag" % { id: id }, data)
        end

        # Get rescue templates
        def rescue_templates(id)
          @http.get("/api/service/%{id}/rescue/templates" % { id: id })
        end

        # Get rescue mode
        def rescue(id)
          @http.get("/api/service/%{id}/rescue" % { id: id })
        end

        # Enter rescue mode
        def enter_rescue(id, data)
          @http.post("/api/service/%{id}/rescue" % { id: id }, data)
        end

        # Cancel rescue mode
        def cancel_rescue(id)
          @http.post("/api/service/%{id}/rescue/cancel" % { id: id })
        end

        # Get server info
        def info(id)
          @http.get("/api/service/%{id}/info" % { id: id })
        end

        # Set hostname
        def set_hostname(id, data)
          @http.post("/api/service/%{id}/hostname" % { id: id }, data)
        end

        # Get IPs
        def ips(id)
          @http.get("/api/service/%{id}/ips" % { id: id })
        end

        # Add IP
        def add_ip(id, data)
          @http.post("/api/service/%{id}/ips" % { id: id }, data)
        end

        # Get VLANs
        def vlans(id)
          @http.get("/api/service/%{id}/vlans" % { id: id })
        end

        # Get IP
        def ip(id, ip)
          @http.get("/api/service/%{id}/ips/%{ip}" % { id: id, ip: ip })
        end

        # Update IP
        def update_ip(id, ip, data)
          @http.put("/api/service/%{id}/ips/%{ip}" % { id: id, ip: ip }, data)
        end

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

        # Power action
        def power(id, action, data)
          @http.post("/api/service/%{id}/power/%{action}" % { id: id, action: action }, data)
        end

        # Get server stock
        def server_stock
          @http.get("/api/serverstock")
      end
    end
  end
end
