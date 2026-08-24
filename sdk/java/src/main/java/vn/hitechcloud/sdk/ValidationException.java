package vn.hitechcloud.sdk;

public class ValidationException extends HiTechCloudException {
    public ValidationException(String message, int statusCode, Object data) {
        super(message, statusCode, data);
    }
}
