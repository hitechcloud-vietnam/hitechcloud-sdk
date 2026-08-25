module HiTechCloud
  # Dns resource
  class DnsResource < BaseResource

    # List DNS services
    def dns_services
      @http.get("/api/dns")
    end

    # Create zone
    def create_zone(service_id, data)
      @http.post("/api/service/%{service_id}/dns" % { service_id: service_id }, data)
    end

    # List zones
    def zones(service_id)
      @http.get("/api/service/%{service_id}/dns" % { service_id: service_id })
    end

    # Get zone
    def zone(service_id, zone_id)
      @http.get("/api/service/%{service_id}/dns/%{zone_id}" % { service_id: service_id, zone_id: zone_id })
    end

    # Delete zone
    def delete_zone(service_id, zone_id)
      @http.delete("/api/service/%{service_id}/dns/%{zone_id}" % { service_id: service_id, zone_id: zone_id })
    end

    # Create record
    def create_record(service_id, zone_id, data)
      @http.post("/api/service/%{service_id}/dns/%{zone_id}/records" % { service_id: service_id, zone_id: zone_id }, data)
    end

    # Update record
    def update_record(service_id, zone_id, record_id, data)
      @http.put("/api/service/%{service_id}/dns/%{zone_id}/records/%{record_id}" % { service_id: service_id, zone_id: zone_id, record_id: record_id }, data)
    end

    # Delete record
    def delete_record(service_id, zone_id, record_id)
      @http.delete("/api/service/%{service_id}/dns/%{zone_id}/records/%{record_id}" % { service_id: service_id, zone_id: zone_id, record_id: record_id })
    end

  end
end
