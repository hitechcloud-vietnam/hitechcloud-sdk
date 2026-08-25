module HiTechCloud
  # Users resource
  class UsersResource < BaseResource

    # Get user details
    def details
      @http.get("/api/details")
    end

    # Update user details
    def update_details(data)
      @http.put("/api/details", data)
    end

    # Get user logs
    def logs
      @http.get("/api/logs")
    end

  end
end
