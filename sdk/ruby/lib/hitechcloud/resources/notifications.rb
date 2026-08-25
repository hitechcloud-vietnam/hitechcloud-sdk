module HiTechCloud
  # Notifications resource
  class NotificationsResource < BaseResource

    # List notifications
    def notifications
      @http.get("/api/notifications")
    end

    # Get new notifications
    def new_notifications
      @http.get("/api/notifications/new")
    end

    # Acknowledge notification
    def acknowledge(id)
      @http.put("/api/notifications/%{id}/ack" % { id: id })
    end

  end
end
