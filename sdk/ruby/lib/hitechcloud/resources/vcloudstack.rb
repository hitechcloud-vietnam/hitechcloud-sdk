module HiTechCloud
  module Resources
    class Vcloudstack < Base

        # Enter rescue
        def rescue(id, vmid)
          @http.post("/api/service/%{id}/vms/%{vmid}/rescue" % { id: id, vmid: vmid })
        end

        # Exit rescue
        def unrescue(id, vmid)
          @http.post("/api/service/%{id}/vms/%{vmid}/unrescue" % { id: id, vmid: vmid })
        end

        # Get console URL
        def console(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/console" % { id: id, vmid: vmid })
        end

        # Get usage
        def usage(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/usage" % { id: id, vmid: vmid })
      end
    end
  end
end
