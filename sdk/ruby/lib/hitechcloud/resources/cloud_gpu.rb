# frozen_string_literal: true

module HiTechCloud
  module Resources
    class CloudGpu < Base
      def list(params = {})
        @http.get('/api/cloudgpu', params: params)
      end

      def get(gpu_id)
        @http.get("/api/cloudgpu/#{gpu_id}")
      end

      def start(gpu_id)
        @http.post("/api/cloudgpu/#{gpu_id}/start")
      end

      def stop(gpu_id)
        @http.post("/api/cloudgpu/#{gpu_id}/stop")
      end

      def restart(gpu_id)
        @http.post("/api/cloudgpu/#{gpu_id}/restart")
      end

      def get_console(gpu_id)
        @http.get("/api/cloudgpu/#{gpu_id}/console")
      end
    end
  end
end
