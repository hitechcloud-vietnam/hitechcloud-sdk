<?php

namespace HiTechCloud\SDK\Resources;

class LocationV2 extends BaseResource
{
    /**
     * List countries
     */
    public function listCountries(): array
    {
        return $this->http->get('/api/location_v2/countries');
    }

    /**
     * List states
     */
    public function listStates(string $code): array
    {
        return $this->http->get('/api/location_v2/' . $code . '/state');
    }

    /**
     * List cities
     */
    public function listCities(int $stateId): array
    {
        return $this->http->get('/api/location_v2/state/' . $serviceId . '/city');
    }

    /**
     * Get city
     */
    public function getCity(string $name): array
    {
        return $this->http->get('/api/location_v2/state/city/' . $name);
    }

}
