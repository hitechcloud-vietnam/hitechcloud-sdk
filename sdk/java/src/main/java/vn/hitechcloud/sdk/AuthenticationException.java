package vn.hitechcloud.sdk;

public class AuthenticationException extends HiTechCloudException {
    public AuthenticationException(String message, int statusCode, Object data) {
        super(message, statusCode, data);
    }
}
