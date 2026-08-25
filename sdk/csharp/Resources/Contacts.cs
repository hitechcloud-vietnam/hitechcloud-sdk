namespace HiTechCloud.SDK.Resources;

public class Contacts : BaseResource
{
    public Contacts(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> ContactsAsync()
    {
        return await Http.GetAsync("/api/contact");
    }

    public async Task<Dictionary<string, object?>> CreateContactAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/contact", data);
    }

    public async Task<Dictionary<string, object?>> PrivilegesAsync()
    {
        return await Http.GetAsync("/api/contact/privileges");
    }

    public async Task<Dictionary<string, object?>> ContactAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/contact/{id}", id));
    }

    public async Task<Dictionary<string, object?>> UpdateContactAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/contact/{id}", id), data);
    }
}
