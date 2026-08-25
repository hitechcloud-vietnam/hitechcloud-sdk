module HiTechCloud
  # Virtualizor resource
  class VirtualizorResource < BaseResource

    # Suspend VM
    def suspend(id, vmid)
      @http.post("/api/service/%{id}/vms/%{vmid}/suspend" % { id: id, vmid: vmid })
    end

    # Unsuspend VM
    def unsuspend(id, vmid)
      @http.post("/api/service/%{id}/vms/%{vmid}/unsuspend" % { id: id, vmid: vmid })
    end

    # Get rebuild options
    def rebuild(id, vmid)
      @http.get("/api/service/%{id}/vms/%{vmid}/rebuild" % { id: id, vmid: vmid })
    end

    # Add SSH key
    def add_ssh_key(id, vmid, data)
      @http.post("/api/service/%{id}/vms/%{vmid}/addsshkey" % { id: id, vmid: vmid }, data)
    end

  end
end
