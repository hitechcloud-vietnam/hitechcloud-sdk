module HiTechCloud
  module Resources
    class CloudInstance < Base

        # List VMs
        def vms(id)
          @http.get("/api/service/%{id}/vms" % { id: id })
        end

        # Create VM
        def create_vm(id, data)
          @http.post("/api/service/%{id}/vms" % { id: id }, data)
        end

        # Get VM
        def vm(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}" % { id: id, vmid: vmid })
        end

        # Delete VM
        def delete_vm(id, vmid)
          @http.delete("/api/service/%{id}/vms/%{vmid}" % { id: id, vmid: vmid })
        end

        # Update VM
        def update_vm(id, vmid, data)
          @http.put("/api/service/%{id}/vms/%{vmid}" % { id: id, vmid: vmid }, data)
        end

        # Stop VM
        def stop_vm(id, vmid)
          @http.post("/api/service/%{id}/vms/%{vmid}/stop" % { id: id, vmid: vmid })
        end

        # Start VM
        def start_vm(id, vmid)
          @http.post("/api/service/%{id}/vms/%{vmid}/start" % { id: id, vmid: vmid })
        end

        # Reboot VM
        def reboot_vm(id, vmid)
          @http.post("/api/service/%{id}/vms/%{vmid}/reboot" % { id: id, vmid: vmid })
        end

        # Reset password
        def reset_password(id, vmid, data)
          @http.post("/api/service/%{id}/vms/%{vmid}/resetpwd" % { id: id, vmid: vmid }, data)
        end

        # Rebuild VM
        def rebuild_vm(id, vmid, data)
          @http.post("/api/service/%{id}/vms/%{vmid}/rebuild" % { id: id, vmid: vmid }, data)
        end

        # Get VM IPs
        def vm_ips(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/ips" % { id: id, vmid: vmid })
        end

        # Add VM IP
        def add_vm_ip(id, vmid, data)
          @http.post("/api/service/%{id}/vms/%{vmid}/ips" % { id: id, vmid: vmid }, data)
        end

        # Get VM interfaces
        def vm_interfaces(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/interfaces" % { id: id, vmid: vmid })
        end

        # Get CPU usage
        def cpu_usage(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/usage/cpu" % { id: id, vmid: vmid })
        end

        # Get network usage
        def net_usage(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/usage/net" % { id: id, vmid: vmid })
        end

        # Get disk usage
        def disk_usage(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/usage/disk" % { id: id, vmid: vmid })
        end

        # Get storage
        def storage(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/storage" % { id: id, vmid: vmid })
        end

        # Update storage
        def update_storage(id, vmid, diskid, data)
          @http.put("/api/service/%{id}/vms/%{vmid}/storage/%{diskid}" % { id: id, vmid: vmid, diskid: diskid }, data)
        end

        # List images
        def images(id)
          @http.get("/api/service/%{id}/images" % { id: id })
        end

        # Create image
        def create_image(id, data)
          @http.post("/api/service/%{id}/images" % { id: id }, data)
        end

        # Get interface IPs
        def interface_ips(id, vmid, iface)
          @http.get("/api/service/%{id}/vms/%{vmid}/interfaces/%{iface}/ips" % { id: id, vmid: vmid, iface: iface })
        end

        # Delete VM IP
        def delete_vm_ip(id, vmid, ipid)
          @http.delete("/api/service/%{id}/vms/%{vmid}/ips/%{ipid}" % { id: id, vmid: vmid, ipid: ipid })
        end

        # Get VM rDNS
        def vm_rdns(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/rdns" % { id: id, vmid: vmid })
        end

        # Set VM rDNS
        def set_vm_rdns(id, vmid, data)
          @http.post("/api/service/%{id}/vms/%{vmid}/rdns" % { id: id, vmid: vmid }, data)
        end

        # Rebuild network
        def rebuild_network(id, vmid)
          @http.post("/api/service/%{id}/vms/%{vmid}/rebuild_network" % { id: id, vmid: vmid })
      end
    end
  end
end
