module HiTechCloud
  # ProxmoxBackup resource
  class ProxmoxBackupResource < BaseResource

    # Get PBS info
    def pbs(id)
      @http.get("/api/service/%{id}/pbs" % { id: id })
    end

    # Get credentials
    def credentials(id)
      @http.get("/api/service/%{id}/pbs/credentials" % { id: id })
    end

    # Get usage
    def usage(id)
      @http.get("/api/service/%{id}/pbs/usage" % { id: id })
    end

    # Get metrics
    def metrics(id)
      @http.get("/api/service/%{id}/pbs/metrics" % { id: id })
    end

    # Get snapshots
    def snapshots(id)
      @http.get("/api/service/%{id}/pbs/snapshots" % { id: id })
    end

    # Get groups
    def groups(id)
      @http.get("/api/service/%{id}/pbs/groups" % { id: id })
    end

    # Change password
    def change_password(id, data)
      @http.post("/api/service/%{id}/pbs/password" % { id: id }, data)
    end

    # Create token
    def create_token(id, data)
      @http.post("/api/service/%{id}/pbs/token" % { id: id }, data)
    end

    # Delete token
    def delete_token(id)
      @http.delete("/api/service/%{id}/pbs/token" % { id: id })
    end

  end
end
