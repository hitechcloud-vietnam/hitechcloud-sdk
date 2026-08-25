module HiTechCloud
  module Resources
    class Proxmox < Base

        # Get status
        def status(id)
          @http.get("/api/service/%{id}/htcpve/status" % { id: id })
        end

        # Power action
        def power(id, data)
          @http.post("/api/service/%{id}/htcpve/power" % { id: id }, data)
        end

        # List VMs
        def vms(id)
          @http.get("/api/service/%{id}/htcpve/vms" % { id: id })
        end

        # Get IPs
        def ips(id)
          @http.get("/api/service/%{id}/htcpve/ips" % { id: id })
        end

        # Set rDNS
        def set_rdns(id, data)
          @http.post("/api/service/%{id}/htcpve/rdns" % { id: id }, data)
        end

        # Get backups
        def backups(id)
          @http.get("/api/service/%{id}/htcpve/backups" % { id: id })
        end

        # Create backup
        def create_backup(id, data)
          @http.post("/api/service/%{id}/htcpve/backups" % { id: id }, data)
        end

        # Get snapshots
        def snapshots(id)
          @http.get("/api/service/%{id}/htcpve/snapshots" % { id: id })
        end

        # Create snapshot
        def create_snapshot(id, data)
          @http.post("/api/service/%{id}/htcpve/snapshots" % { id: id }, data)
        end

        # Get usage
        def usage(id)
          @http.get("/api/service/%{id}/htcpve/usage" % { id: id })
      end
    end
  end
end
