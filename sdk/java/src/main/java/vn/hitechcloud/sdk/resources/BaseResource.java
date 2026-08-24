package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.HashMap;
import java.util.Map;

public class BaseResource {
    protected final HttpClient httpClient;

    public BaseResource(HttpClient httpClient) {
        this.httpClient = httpClient;
    }
}
