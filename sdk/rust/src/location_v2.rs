//! LocationV2: countries, states, cities lookup

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct LocationV2Resource {
    http: Arc<HttpClient>,
}

impl LocationV2Resource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/location_v2/countries - Return list of countries
    pub async fn list_countries(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/location_v2/countries", None).await
    }

    /// GET /api/location_v2/{code}/state - Return states for a country code
    pub async fn get_states(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/location_v2/{code}/state", None).await
    }

    /// GET /api/location_v2/state/{id}/city - Return cities for a state ID
    pub async fn get_cities(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/location_v2/state/{id}/city", None).await
    }

    /// GET /api/location_v2/state/city/{name} - Return cities for a state name
    pub async fn get_cities_by_state_name(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/location_v2/state/city/{name}", None).await
    }

}
