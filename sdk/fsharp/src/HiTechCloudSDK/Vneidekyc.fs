namespace HiTechCloud.SDK

/// VNeIDEKYC: eKYC identity verification and organization verification
type VNeIdeKycResource(httpClient: HttpClient) =

    /// GET /api/vneidekyc/ekyc/session - Start personal eKYC session
    member this.StartPersonalEkyc() =
        async {
            return! httpClient.getAsync("/api/vneidekyc/ekyc/session")
        }

    /// GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session
    member this.GetEkycSession() =
        async {
            return! httpClient.getAsync("/api/vneidekyc/ekyc/session/{session_hash}")
        }

    /// GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions
    member this.ListClientSessions() =
        async {
            return! httpClient.getAsync("/api/vneidekyc/ekyc/list/{client_id}")
        }

    /// POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file
    member this.UploadFile() =
        async {
            return! httpClient.postAsync("/api/vneidekyc/ekyc/{session_hash}/upload")
        }

    /// POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC
    member this.SubmitEkyc() =
        async {
            return! httpClient.postAsync("/api/vneidekyc/ekyc/{session_hash}/submit")
        }

    /// POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session
    member this.CancelSession() =
        async {
            return! httpClient.postAsync("/api/vneidekyc/ekyc/{session_hash}/cancel")
        }

    /// POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC
    member this.AcceptEkyc() =
        async {
            return! httpClient.postAsync("/api/vneidekyc/ekyc/{session_hash}/accept")
        }

    /// POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC
    member this.RejectEkyc() =
        async {
            return! httpClient.postAsync("/api/vneidekyc/ekyc/{session_hash}/reject")
        }

    /// POST /api/vneidekyc/org/lookup - Organization tax code lookup
    member this.LookupOrganization() =
        async {
            return! httpClient.postAsync("/api/vneidekyc/org/lookup")
        }

    /// POST /api/vneidekyc/org/start - Start organization verification
    member this.StartOrgVerification() =
        async {
            return! httpClient.postAsync("/api/vneidekyc/org/start")
        }

    /// GET /api/vneidekyc/org/{org_hash} - Get organization record
    member this.GetOrganization() =
        async {
            return! httpClient.getAsync("/api/vneidekyc/org/{org_hash}")
        }

    /// POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization
    member this.AcceptOrganization() =
        async {
            return! httpClient.postAsync("/api/vneidekyc/org/{org_hash}/accept")
        }

    /// POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization
    member this.RejectOrganization() =
        async {
            return! httpClient.postAsync("/api/vneidekyc/org/{org_hash}/reject")
        }

    /// POST /api/vneidekyc/pdf/upload - Upload signed PDF
    member this.UploadSignedPdf() =
        async {
            return! httpClient.postAsync("/api/vneidekyc/pdf/upload")
        }

    /// GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record
    member this.GetSignedPdf() =
        async {
            return! httpClient.getAsync("/api/vneidekyc/pdf/{pdf_hash}")
        }

    /// GET /api/vneidekyc/client/{client_id}/status - Client verification status
    member this.GetClientStatus() =
        async {
            return! httpClient.getAsync("/api/vneidekyc/client/{client_id}/status")
        }

