package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class LocationV2 extends BaseResource {

    public LocationV2(HttpClient http) {
        super(http);
    }

    /** Get countries */
    public Map<String, Object> countries() throws Exception {
        return http.get("/api/location_v2/countries");
    }

    /** Get states */
    public Map<String, Object> states(String code) throws Exception {
        return http.get(String.format("/api/location_v2/%code/state", code));
    }

    /** Get cities */
    public Map<String, Object> cities(int id) throws Exception {
        return http.get(String.format("/api/location_v2/state/%id/city", id));
    }

    /** Get city by name */
    public Map<String, Object> cityByName(String name) throws Exception {
        return http.get(String.format("/api/location_v2/state/city/%name", name));
    }

}
