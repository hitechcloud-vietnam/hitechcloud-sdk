<?php

namespace HiTechCloud\SDK\Resources;

use HiTechCloud\SDK\HttpClient;

class BaseResource
{
    protected HttpClient $http;

    public function __construct(HttpClient $http)
    {
        $this->http = $http;
    }
}
