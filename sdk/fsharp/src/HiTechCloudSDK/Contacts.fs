namespace HiTechCloud.SDK

/// Contacts: manage account contacts
type ContactsResource(httpClient: HttpClient) =

    /// GET /api/contact - Return a list of contacts on this account
    member this.List() =
        async {
            return! httpClient.getAsync("/api/contact")
        }

    /// POST /api/contact - Create new contact account
    member this.Create() =
        async {
            return! httpClient.postAsync("/api/contact")
        }

    /// GET /api/contact/privileges - List possible contact privileges
    member this.GetPrivileges() =
        async {
            return! httpClient.getAsync("/api/contact/privileges")
        }

    /// GET /api/contact/{id} - Get contact details
    member this.Get() =
        async {
            return! httpClient.getAsync("/api/contact/{id}")
        }

    /// PUT /api/contact/{id} - Update contact details
    member this.Update() =
        async {
            return! httpClient.putAsync("/api/contact/{id}")
        }

