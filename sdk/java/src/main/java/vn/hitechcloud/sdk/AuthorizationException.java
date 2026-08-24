package vn.hitechcloud.sdk;

public class AuthorizationException extends HiTechCloudException {
    public AuthorizationException(String message, int statusCode, Object data) {
        super(message, statusCode, data);
    }
}
