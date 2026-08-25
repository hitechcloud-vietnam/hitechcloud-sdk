namespace HiTechCloud.SDK

/// Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding
type DomainsResource(httpClient: HttpClient) =

    /// GET /api/domain - List domains under your account
    member this.List() =
        async {
            return! httpClient.getAsync("/api/domain")
        }

    /// GET /api/domain/{id} - Get domain details
    member this.Get() =
        async {
            return! httpClient.getAsync("/api/domain/{id}")
        }

    /// GET /api/domain/name/{name} - Get domain details by name
    member this.GetByName() =
        async {
            return! httpClient.getAsync("/api/domain/name/{name}")
        }

    /// GET /api/whois/{domain} - WHOIS lookup
    member this.Whois() =
        async {
            return! httpClient.getAsync("/api/whois/{domain}")
        }

    /// GET /api/whoislookup/{domain} - Perform WHOIS lookup
    member this.WhoisLookup() =
        async {
            return! httpClient.getAsync("/api/whoislookup/{domain}")
        }

    /// GET /api/domain/availability/{domain} - Check domain availability
    member this.CheckAvailability() =
        async {
            return! httpClient.getAsync("/api/domain/availability/{domain}")
        }

    /// GET /api/domain/{id}/ns - Get domain nameservers
    member this.GetNameservers() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/ns")
        }

    /// PUT /api/domain/{id}/ns - Update domain nameservers
    member this.UpdateNameservers() =
        async {
            return! httpClient.putAsync("/api/domain/{id}/ns")
        }

    /// GET /api/domain/{id}/epp - Get domain EPP code
    member this.GetEppCode() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/epp")
        }

    /// GET /api/domain/{id}/sync - Synchronize domain
    member this.Sync() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/sync")
        }

    /// GET /api/domain/{id}/reglock - Get domain lock status
    member this.GetLock() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/reglock")
        }

    /// PUT /api/domain/{id}/reglock - Update domain lock
    member this.UpdateLock() =
        async {
            return! httpClient.putAsync("/api/domain/{id}/reglock")
        }

    /// PUT /api/domain/{id}/idprotection - Update ID protection
    member this.UpdateIdProtection() =
        async {
            return! httpClient.putAsync("/api/domain/{id}/idprotection")
        }

    /// GET /api/domain/{id}/contact - Get domain contact info
    member this.GetContact() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/contact")
        }

    /// PUT /api/domain/{id}/contact - Update domain contact info
    member this.UpdateContact() =
        async {
            return! httpClient.putAsync("/api/domain/{id}/contact")
        }

    /// GET /api/domain/{id}/email/forwarding - Get email forwarding
    member this.GetEmailForwarding() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/email/forwarding")
        }

    /// PUT /api/domain/{id}/email/forwarding - Update email forwarding
    member this.UpdateEmailForwarding() =
        async {
            return! httpClient.putAsync("/api/domain/{id}/email/forwarding")
        }

    /// GET /api/domain/order - List available TLDs
    member this.GetAvailableTlds() =
        async {
            return! httpClient.getAsync("/api/domain/order")
        }

    /// POST /api/domain/order - Order new domain
    member this.Order() =
        async {
            return! httpClient.postAsync("/api/domain/order")
        }

    /// POST /api/domain/{id}/renew - Renew domain
    member this.Renew() =
        async {
            return! httpClient.postAsync("/api/domain/{id}/renew")
        }

    /// GET /api/domain/order/{id}/form - Get additional data for TLD
    member this.GetTldForm() =
        async {
            return! httpClient.getAsync("/api/domain/order/{id}/form")
        }

    /// GET /api/domain/{id}/documents - Get domain documents
    member this.GetDocuments() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/documents")
        }

