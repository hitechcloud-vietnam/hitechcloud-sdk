<?php

namespace HiTechCloud\SDK;

use GuzzleHttp\Client;
use GuzzleHttp\Exception\RequestException;

class HttpClient
{
    private Client $client;
    private ?string $token = null;
    private int $maxRetries;

    public function __construct(string $baseUrl, int $timeout = 30, int $maxRetries = 3)
    {
        $this->maxRetries = $maxRetries;
        $this->client = new Client([
            'base_uri' => $baseUrl,
            'timeout' => $timeout,
            'headers' => [
                'Content-Type' => 'application/json',
                'User-Agent' => 'HiTechCloud-SDK-PHP/1.0.0',
            ],
        ]);
    }

    public function setToken(string $token): void
    {
        $this->token = $token;
    }

    public function clearToken(): void
    {
        $this->token = null;
    }

    private function getHeaders(): array
    {
        $headers = ['Content-Type' => 'application/json'];
        if ($this->token) {
            $headers['Authorization'] = 'Bearer ' . $this->token;
        }
        return $headers;
    }

    private function mapError(RequestException $e): void
    {
        $response = $e->getResponse();
        if (!$response) {
            throw new HiTechCloudException($e->getMessage());
        }

        $statusCode = $response->getStatusCode();
        $body = json_decode($response->getBody()->getContents(), true);
        $message = $body['error'] ?? $body['message'] ?? "HTTP {$statusCode}";

        switch ($statusCode) {
            case 401:
                throw new AuthenticationException($message, $body);
            case 403:
                throw new AuthorizationException($message, $body);
            case 404:
                throw new NotFoundException($message, $body);
            case 422:
                throw new ValidationException($message, $body);
            case 429:
                $retryAfter = (int) ($response->getHeader('Retry-After')[0] ?? 60);
                throw new RateLimitException($message, $retryAfter, $body);
            default:
                if ($statusCode >= 500) {
                    throw new ServerException($message, $statusCode, $body);
                }
                throw new HiTechCloudException($message, $statusCode, $body);
        }
    }

    public function request(string $method, string $path, array $data = [], array $params = []): array
    {
        $lastException = null;

        for ($attempt = 0; $attempt <= $this->maxRetries; $attempt++) {
            try {
                $options = ['headers' => $this->getHeaders()];
                if (!empty($data)) {
                    $options['json'] = $data;
                }
                if (!empty($params)) {
                    $options['query'] = $params;
                }

                $response = $this->client->request($method, $path, $options);
                return json_decode($response->getBody()->getContents(), true);
            } catch (RequestException $e) {
                $lastException = $e;
                $response = $e->getResponse();

                if ($response && $response->getStatusCode() === 429 && $attempt < $this->maxRetries) {
                    $retryAfter = (int) ($response->getHeader('Retry-After')[0] ?? 60);
                    sleep($retryAfter);
                    continue;
                }

                if ($attempt < $this->maxRetries && (!$response || $response->getStatusCode() >= 500)) {
                    sleep(pow(2, $attempt));
                    continue;
                }

                $this->mapError($e);
            }
        }

        $this->mapError($lastException);
    }

    public function get(string $path, array $params = []): array
    {
        return $this->request('GET', $path, [], $params);
    }

    public function post(string $path, array $data = []): array
    {
        return $this->request('POST', $path, $data);
    }

    public function put(string $path, array $data = []): array
    {
        return $this->request('PUT', $path, $data);
    }

    public function delete(string $path): array
    {
        return $this->request('DELETE', $path);
    }
}
