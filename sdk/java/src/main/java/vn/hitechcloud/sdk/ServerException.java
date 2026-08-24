package vn.hitechcloud.sdk;

public class ServerException extends HiTechCloudException {
    public ServerException(String message, int statusCode, Object data) {
        super(message, statusCode, data);
    }
}
