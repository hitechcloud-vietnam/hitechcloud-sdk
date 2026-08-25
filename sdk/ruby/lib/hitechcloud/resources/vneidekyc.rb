module HiTechCloud
  # Vneidekyc resource
  class VneidekycResource < BaseResource

    # Create eKYC session
    def ekyc_session
      @http.get("/api/vneidekyc/ekyc/session")
    end

    # Get session
    def get_session(session_hash)
      @http.get("/api/vneidekyc/ekyc/session/%{session_hash}" % { session_hash: session_hash })
    end

    # List sessions
    def list_sessions(client_id)
      @http.get("/api/vneidekyc/ekyc/list/%{client_id}" % { client_id: client_id })
    end

    # Upload document
    def upload(session_hash, data)
      @http.post("/api/vneidekyc/ekyc/%{session_hash}/upload" % { session_hash: session_hash }, data)
    end

    # Submit
    def submit(session_hash)
      @http.post("/api/vneidekyc/ekyc/%{session_hash}/submit" % { session_hash: session_hash })
    end

    # Cancel
    def cancel(session_hash)
      @http.post("/api/vneidekyc/ekyc/%{session_hash}/cancel" % { session_hash: session_hash })
    end

    # Accept
    def accept(session_hash)
      @http.post("/api/vneidekyc/ekyc/%{session_hash}/accept" % { session_hash: session_hash })
    end

    # Reject
    def reject(session_hash)
      @http.post("/api/vneidekyc/ekyc/%{session_hash}/reject" % { session_hash: session_hash })
    end

    # Org lookup
    def org_lookup(data)
      @http.post("/api/vneidekyc/org/lookup", data)
    end

    # Start org verification
    def org_start(data)
      @http.post("/api/vneidekyc/org/start", data)
    end

    # Get org session
    def org_session(org_hash)
      @http.get("/api/vneidekyc/org/%{org_hash}" % { org_hash: org_hash })
    end

    # Accept org
    def org_accept(org_hash)
      @http.post("/api/vneidekyc/org/%{org_hash}/accept" % { org_hash: org_hash })
    end

    # Reject org
    def org_reject(org_hash)
      @http.post("/api/vneidekyc/org/%{org_hash}/reject" % { org_hash: org_hash })
    end

    # Upload PDF
    def pdf_upload(data)
      @http.post("/api/vneidekyc/pdf/upload", data)
    end

    # Get PDF status
    def pdf_status(pdf_hash)
      @http.get("/api/vneidekyc/pdf/%{pdf_hash}" % { pdf_hash: pdf_hash })
    end

    # Get client status
    def client_status(client_id)
      @http.get("/api/vneidekyc/client/%{client_id}/status" % { client_id: client_id })
    end

  end
end
