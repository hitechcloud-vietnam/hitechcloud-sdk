namespace HiTechCloud.SDK

/// SSL Certificates: list, order, download certificates
type SSLResource(httpClient: HttpClient) =

    /// GET /api/certificate - List all SSL certificates
    member this.List() =
        async {
            return! httpClient.getAsync("/api/certificate")
        }

    /// GET /api/certificate/{id} - Return certificate details
    member this.Get() =
        async {
            return! httpClient.getAsync("/api/certificate/{id}")
        }

    /// GET /api/certificate/{id}/crt - Download X.509 certificate
    member this.Download() =
        async {
            return! httpClient.getAsync("/api/certificate/{id}/crt")
        }

    /// GET /api/certificate/order - List available certificates for purchase
    member this.ListAvailable() =
        async {
            return! httpClient.getAsync("/api/certificate/order")
        }

    /// POST /api/certificate/order - Order new certificate
    member this.Order() =
        async {
            return! httpClient.postAsync("/api/certificate/order")
        }

    /// GET /api/certificate/order/{product_id}/software - List server software
    member this.ListServerSoftware() =
        async {
            return! httpClient.getAsync("/api/certificate/order/{product_id}/software")
        }

