import Foundation

/// VNeIDEKYC: eKYC identity verification and organization verification
public class VNeIdeKycResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/vneidekyc/ekyc/session - Start personal eKYC session
    public func startPersonalEkyc(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/vneidekyc/ekyc/session", params: params)
    }

    /// GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session
    public func getEkycSession(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/vneidekyc/ekyc/session/{session_hash}", params: params)
    }

    /// GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions
    public func listClientSessions(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/vneidekyc/ekyc/list/{client_id}", params: params)
    }

    /// POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file
    public func uploadFile(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/vneidekyc/ekyc/{session_hash}/upload", params: params)
    }

    /// POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC
    public func submitEkyc(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/vneidekyc/ekyc/{session_hash}/submit", params: params)
    }

    /// POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session
    public func cancelSession(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/vneidekyc/ekyc/{session_hash}/cancel", params: params)
    }

    /// POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC
    public func acceptEkyc(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/vneidekyc/ekyc/{session_hash}/accept", params: params)
    }

    /// POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC
    public func rejectEkyc(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/vneidekyc/ekyc/{session_hash}/reject", params: params)
    }

    /// POST /api/vneidekyc/org/lookup - Organization tax code lookup
    public func lookupOrganization(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/vneidekyc/org/lookup", params: params)
    }

    /// POST /api/vneidekyc/org/start - Start organization verification
    public func startOrgVerification(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/vneidekyc/org/start", params: params)
    }

    /// GET /api/vneidekyc/org/{org_hash} - Get organization record
    public func getOrganization(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/vneidekyc/org/{org_hash}", params: params)
    }

    /// POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization
    public func acceptOrganization(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/vneidekyc/org/{org_hash}/accept", params: params)
    }

    /// POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization
    public func rejectOrganization(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/vneidekyc/org/{org_hash}/reject", params: params)
    }

    /// POST /api/vneidekyc/pdf/upload - Upload signed PDF
    public func uploadSignedPdf(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/vneidekyc/pdf/upload", params: params)
    }

    /// GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record
    public func getSignedPdf(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/vneidekyc/pdf/{pdf_hash}", params: params)
    }

    /// GET /api/vneidekyc/client/{client_id}/status - Client verification status
    public func getClientStatus(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/vneidekyc/client/{client_id}/status", params: params)
    }

}
