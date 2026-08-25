using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class LocationV2 : BaseResource
{
    public LocationV2(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> CountriesAsync()
    {
        return await Http.GetAsync("/api/location_v2/countries");
    }

    public async Task<Dictionary<string, object?>> StatesAsync(string code)
    {
        return await Http.GetAsync(string.Format("/api/location_v2/{code}/state", code));
    }

    public async Task<Dictionary<string, object?>> CitiesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/location_v2/state/{id}/city", id));
    }

    public async Task<Dictionary<string, object?>> CityByNameAsync(string name)
    {
        return await Http.GetAsync(string.Format("/api/location_v2/state/city/{name}", name));
    }
}
