namespace HiTechCloud.SDK.Resources;

public class CephS3 : BaseResource
{
    public CephS3(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> S3Async(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/s3", id));
    }

    public async Task<Dictionary<string, object?>> CredentialsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/s3/credentials", id));
    }

    public async Task<Dictionary<string, object?>> UsageAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/s3/usage", id));
    }

    public async Task<Dictionary<string, object?>> MetricsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/s3/metrics", id));
    }

    public async Task<Dictionary<string, object?>> BucketsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/s3/buckets", id));
    }

    public async Task<Dictionary<string, object?>> CreateBucketAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/s3/buckets", id), data);
    }

    public async Task<Dictionary<string, object?>> DeleteBucketAsync(int id, string bucket)
    {
        return await Http.DeleteAsync(string.Format("/api/service/{id}/s3/buckets/{bucket}", id, bucket));
    }

    public async Task<Dictionary<string, object?>> SubusersAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/s3/subusers", id));
    }

    public async Task<Dictionary<string, object?>> CreateSubuserAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/s3/subusers", id), data);
    }

    public async Task<Dictionary<string, object?>> DeleteSubuserAsync(int id, string subuser)
    {
        return await Http.DeleteAsync(string.Format("/api/service/{id}/s3/subusers/{subuser}", id, subuser));
    }

    public async Task<Dictionary<string, object?>> RotateKeyAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/s3/key", id), data);
    }
}
