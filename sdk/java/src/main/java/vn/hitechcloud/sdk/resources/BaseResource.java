package vn.hitechcloud.sdk.resources;

import vn.hitechcloud.sdk.HttpClient;
import java.util.HashMap;
import java.util.Map;

public class BaseResource {
    protected final HttpClient http;

    public BaseResource(HttpClient http) {
        this.http = http;
    }
}
