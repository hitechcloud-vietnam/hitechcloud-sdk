<?php

namespace HiTechCloud\SDK\Resources;

class VNeIdeKyc extends BaseResource
{
    /**
     * Start personal eKYC
     */
    public function startPersonalEkyc(array $params = []): array
    {
        return $this->http->get('/api/vneidekyc/ekyc/session', $params);
    }

    /**
     * Get eKYC session
     */
    public function getEkycSession(string $sessionHash): array
    {
        return $this->http->get('/api/vneidekyc/ekyc/session/' . $sessionHash);
    }

    /**
     * List client sessions
     */
    public function listClientSessions(int $clientId): array
    {
        return $this->http->get('/api/vneidekyc/ekyc/list/' . $clientId);
    }

    /**
     * Upload file
     */
    public function uploadFile(string $sessionHash, array $data): array
    {
        return $this->http->post('/api/vneidekyc/ekyc/' . $sessionHash . '/upload', $data);
    }

    /**
     * Submit eKYC
     */
    public function submitEkyc(string $sessionHash, array $data): array
    {
        return $this->http->post('/api/vneidekyc/ekyc/' . $sessionHash . '/submit', $data);
    }

    /**
     * Cancel session
     */
    public function cancelSession(string $sessionHash): array
    {
        return $this->http->post('/api/vneidekyc/ekyc/' . $sessionHash . '/cancel');
    }

    /**
     * Accept eKYC
     */
    public function acceptEkyc(string $sessionHash): array
    {
        return $this->http->post('/api/vneidekyc/ekyc/' . $sessionHash . '/accept');
    }

    /**
     * Reject eKYC
     */
    public function rejectEkyc(string $sessionHash, array $data): array
    {
        return $this->http->post('/api/vneidekyc/ekyc/' . $sessionHash . '/reject', $data);
    }

    /**
     * Lookup organization
     */
    public function lookupOrganization(array $data): array
    {
        return $this->http->post('/api/vneidekyc/org/lookup', $data);
    }

    /**
     * Start org verification
     */
    public function startOrgVerification(array $data): array
    {
        return $this->http->post('/api/vneidekyc/org/start', $data);
    }

    /**
     * Get organization
     */
    public function getOrganization(string $orgHash): array
    {
        return $this->http->get('/api/vneidekyc/org/' . $orgHash);
    }

    /**
     * Accept organization
     */
    public function acceptOrganization(string $orgHash): array
    {
        return $this->http->post('/api/vneidekyc/org/' . $orgHash . '/accept');
    }

    /**
     * Reject organization
     */
    public function rejectOrganization(string $orgHash, array $data): array
    {
        return $this->http->post('/api/vneidekyc/org/' . $orgHash . '/reject', $data);
    }

    /**
     * Upload signed PDF
     */
    public function uploadSignedPdf(array $data): array
    {
        return $this->http->post('/api/vneidekyc/pdf/upload', $data);
    }

    /**
     * Get signed PDF
     */
    public function getSignedPdf(string $pdfHash): array
    {
        return $this->http->get('/api/vneidekyc/pdf/' . $pdfHash);
    }

    /**
     * Get client status
     */
    public function getClientStatus(int $clientId): array
    {
        return $this->http->get('/api/vneidekyc/client/' . $clientId . '/status');
    }

}
