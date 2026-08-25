module HiTechCloud
  module Resources
    class CephS3 < Base

        # Get S3 info
        def s3(id)
          @http.get("/api/service/%{id}/s3" % { id: id })
        end

        # Get credentials
        def credentials(id)
          @http.get("/api/service/%{id}/s3/credentials" % { id: id })
        end

        # Get usage
        def usage(id)
          @http.get("/api/service/%{id}/s3/usage" % { id: id })
        end

        # Get metrics
        def metrics(id)
          @http.get("/api/service/%{id}/s3/metrics" % { id: id })
        end

        # List buckets
        def buckets(id)
          @http.get("/api/service/%{id}/s3/buckets" % { id: id })
        end

        # Create bucket
        def create_bucket(id, data)
          @http.post("/api/service/%{id}/s3/buckets" % { id: id }, data)
        end

        # Delete bucket
        def delete_bucket(id, bucket)
          @http.delete("/api/service/%{id}/s3/buckets/%{bucket}" % { id: id, bucket: bucket })
        end

        # List subusers
        def subusers(id)
          @http.get("/api/service/%{id}/s3/subusers" % { id: id })
        end

        # Create subuser
        def create_subuser(id, data)
          @http.post("/api/service/%{id}/s3/subusers" % { id: id }, data)
        end

        # Delete subuser
        def delete_subuser(id, subuser)
          @http.delete("/api/service/%{id}/s3/subusers/%{subuser}" % { id: id, subuser: subuser })
        end

        # Rotate key
        def rotate_key(id, data)
          @http.post("/api/service/%{id}/s3/key" % { id: id }, data)
      end
    end
  end
end
