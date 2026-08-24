package vn.hitechcloud.sdk;

public class NotFoundException extends HiTechCloudException {
    public NotFoundException(String message, int statusCode, Object data) {
        super(message, statusCode, data);
    }
}
