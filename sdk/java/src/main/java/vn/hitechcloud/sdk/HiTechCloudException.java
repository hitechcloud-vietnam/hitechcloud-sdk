package vn.hitechcloud.sdk;

public class HiTechCloudException extends RuntimeException {
    private final int statusCode;
    private final Object data;

    public HiTechCloudException(String message, int statusCode, Object data) {
        super(message);
        this.statusCode = statusCode;
        this.data = data;
    }

    public int getStatusCode() { return statusCode; }
    public Object getData() { return data; }
}
