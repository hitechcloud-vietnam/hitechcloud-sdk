module HiTechCloud
  # DnsManage resource
  class DnsManageResource < BaseResource

    # Register DNS
    def register_dns(id, data)
      @http.post("/api/domain/%{id}/reg" % { id: id }, data)
    end

    # Get DNS records
    def dns_records(id)
      @http.get("/api/domain/%{id}/dns" % { id: id })
    end

    # Create DNS record
    def create_dns_record(id, data)
      @http.post("/api/domain/%{id}/dns" % { id: id }, data)
    end

    # Update DNS record
    def update_dns_record(id, index, data)
      @http.put("/api/domain/%{id}/dns/%{index}" % { id: id, index: index }, data)
    end

    # Delete DNS record
    def delete_dns_record(id, index)
      @http.delete("/api/domain/%{id}/dns/%{index}" % { id: id, index: index })
    end

    # Get DNS types
    def dns_types(id)
      @http.get("/api/domain/%{id}/dns/types" % { id: id })
    end

    # Get DNSSEC flags
    def dnssec_flags(id)
      @http.get("/api/domain/%{id}/dnssec/flags" % { id: id })
    end

    # Get DNSSEC
    def dnssec(id)
      @http.get("/api/domain/%{id}/dnssec" % { id: id })
    end

    # Create DNSSEC
    def create_dnssec(id, data)
      @http.post("/api/domain/%{id}/dnssec" % { id: id }, data)
    end

    # Delete DNSSEC
    def delete_dnssec(id)
      @http.delete("/api/domain/%{id}/dnssec" % { id: id })
    end

  end
end
