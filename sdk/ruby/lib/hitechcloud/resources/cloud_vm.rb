module HiTechCloud
  module Resources
    class CloudVm < Base

        # Get upgrade options
        def upgrade(id)
          @http.get("/api/service/%{id}/upgrade" % { id: id })
        end

        # Upgrade
        def do_upgrade(id, data)
          @http.post("/api/service/%{id}/upgrade" % { id: id }, data)
        end

        # Get resources
        def resources(id)
          @http.get("/api/service/%{id}/resources" % { id: id })
        end

        # Get template
        def template(id, vmid)
          @http.get("/api/service/%{id}/templates/%{vmid}" % { id: id, vmid: vmid })
        end

        # Get memory usage
        def memory_usage(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/usage/memory" % { id: id, vmid: vmid })
        end

        # Get VM images
        def vm_images(id, vmid)
          @http.get("/api/service/%{id}/vms/%{vmid}/images" % { id: id, vmid: vmid })
        end

        # Create VM image
        def create_vm_image(id, vmid, data)
          @http.post("/api/service/%{id}/vms/%{vmid}/images" % { id: id, vmid: vmid }, data)
        end

        # Set boot order
        def boot_order(id, vmid, data)
          @http.post("/api/service/%{id}/vms/%{vmid}/boot" % { id: id, vmid: vmid }, data)
        end

        # Toggle TUN/TAP
        def tuntap(id, vmid, data)
          @http.post("/api/service/%{id}/vms/%{vmid}/tuntap" % { id: id, vmid: vmid }, data)
      end
    end
  end
end
