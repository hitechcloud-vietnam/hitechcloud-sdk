module HiTechCloud
  module Resources
    class ServiceStatus < Base

        # List statuses
        def statuses
          @http.get("/api/statuses")
        end

        # Update status
        def update_status(id, data)
          @http.put("/api/statuses/%{id}" % { id: id }, data)
      end
    end
  end
end
