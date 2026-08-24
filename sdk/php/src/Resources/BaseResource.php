<?php

namespace HiTechCloud\SDK\Resources;

class BaseResource
{
    protected HttpClient $http;

    public function __construct(HttpClient $http)
    {
        $this->http = $http;
    }
}
