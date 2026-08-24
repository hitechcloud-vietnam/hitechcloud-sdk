namespace HiTechCloud.SDK;

public class HiTechCloudException : Exception
{
    public int StatusCode { get; }
    public object? Data { get; }

    public HiTechCloudException(string message, int statusCode = 0, object? data = null)
        : base(message)
    {
        StatusCode = statusCode;
        Data = data;
    }
}

public class AuthenticationException : HiTechCloudException
{
    public AuthenticationException(string message, int statusCode, object? data)
        : base(message, statusCode, data) { }
}

public class AuthorizationException : HiTechCloudException
{
    public AuthorizationException(string message, int statusCode, object? data)
        : base(message, statusCode, data) { }
}

public class NotFoundException : HiTechCloudException
{
    public NotFoundException(string message, int statusCode, object? data)
        : base(message, statusCode, data) { }
}

public class RateLimitException : HiTechCloudException
{
    public int RetryAfter { get; }

    public RateLimitException(string message, int statusCode, object? data, int retryAfter = 60)
        : base(message, statusCode, data)
    {
        RetryAfter = retryAfter;
    }
}

public class ValidationException : HiTechCloudException
{
    public ValidationException(string message, int statusCode, object? data)
        : base(message, statusCode, data) { }
}

public class ServerException : HiTechCloudException
{
    public ServerException(string message, int statusCode, object? data)
        : base(message, statusCode, data) { }
}
