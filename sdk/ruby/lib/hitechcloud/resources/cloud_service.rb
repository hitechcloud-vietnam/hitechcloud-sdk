module HiTechCloud
  # CloudService resource
  class CloudServiceResource < BaseResource

    # Shutdown VM
    def shutdown(id, vmid)
      @http.post("/api/service/%{id}/vms/%{vmid}/shutdown" % { id: id, vmid: vmid })
    end

    # Reset VM
    def reset(id, vmid)
      @http.post("/api/service/%{id}/vms/%{vmid}/reset" % { id: id, vmid: vmid })
    end

    # Set hostname
    def set_hostname(id, vmid, data)
      @http.post("/api/service/%{id}/vms/%{vmid}/hostname" % { id: id, vmid: vmid }, data)
    end

    # Get IP pool
    def ip_pool(id, vmid)
      @http.get("/api/service/%{id}/vms/%{vmid}/ippool" % { id: id, vmid: vmid })
    end

    # Assign IP
    def assign_ip(id, vmid, pool)
      @http.post("/api/service/%{id}/vms/%{vmid}/ippool/%{pool}" % { id: id, vmid: vmid, pool: pool })
    end

    # List networks
    def networks(id)
      @http.get("/api/service/%{id}/networks" % { id: id })
    end

    # Create interface
    def create_interface(id, vmid, data)
      @http.post("/api/service/%{id}/vms/%{vmid}/interfaces" % { id: id, vmid: vmid }, data)
    end

    # Get interface
    def get_interface(id, vmid, iface)
      @http.get("/api/service/%{id}/vms/%{vmid}/interfaces/%{iface}" % { id: id, vmid: vmid, iface: iface })
    end

    # Update interface
    def update_interface(id, vmid, iface, data)
      @http.put("/api/service/%{id}/vms/%{vmid}/interfaces/%{iface}" % { id: id, vmid: vmid, iface: iface }, data)
    end

    # Delete interface
    def delete_interface(id, vmid, iface)
      @http.delete("/api/service/%{id}/vms/%{vmid}/interfaces/%{iface}" % { id: id, vmid: vmid, iface: iface })
    end

  end
end
