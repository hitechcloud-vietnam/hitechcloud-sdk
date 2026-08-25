module HiTechCloud
  # LocationV2 resource
  class LocationV2Resource < BaseResource

    # Get countries
    def countries
      @http.get("/api/location_v2/countries")
    end

    # Get states
    def states(code)
      @http.get("/api/location_v2/%{code}/state" % { code: code })
    end

    # Get cities
    def cities(id)
      @http.get("/api/location_v2/state/%{id}/city" % { id: id })
    end

    # Get city by name
    def city_by_name(name)
      @http.get("/api/location_v2/state/city/%{name}" % { name: name })
    end

  end
end
