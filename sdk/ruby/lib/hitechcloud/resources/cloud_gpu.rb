module HiTechCloud
  # CloudGpu resource
  class CloudGpuResource < BaseResource

    # Reboot VM
    def reboot(id, data)
      @http.put("/api/service/%{id}/vms/reboot" % { id: id }, data)
    end

    # Stop VM
    def stop(id, data)
      @http.put("/api/service/%{id}/vms/stop" % { id: id }, data)
    end

    # Start VM
    def start(id, data)
      @http.put("/api/service/%{id}/vms/start" % { id: id }, data)
    end

    # Get firewall rules
    def firewall(id)
      @http.get("/api/service/%{id}/vms/firewall" % { id: id })
    end

    # Create firewall rule
    def create_firewall(id, data)
      @http.post("/api/service/%{id}/vms/firewall" % { id: id }, data)
    end

    # Delete firewall rule
    def delete_firewall(id, position)
      @http.delete("/api/service/%{id}/vms/firewall/%{position}" % { id: id, position: position })
    end

  end
end
