import 'http_client.dart';

/// HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters
class AiFactoryResource {
  final HttpClient httpClient;
  AiFactoryResource(this.httpClient);

  /// GET /api/service/{id}/templates - List templates
  Future<Map<String, dynamic>> listTemplates([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/templates', params);
  }

  /// POST /api/service/{id}/templates - Save a template
  Future<Map<String, dynamic>> saveTemplate([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/templates', params);
  }

  /// GET /api/service/{id}/hitechcloud/mode - Get provisioning mode
  Future<Map<String, dynamic>> getProvisioningMode([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/hitechcloud/mode', params);
  }

  /// GET /api/service/{id}/hitechcloud/examples - Get JSON examples
  Future<Map<String, dynamic>> getJsonExamples([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/hitechcloud/examples', params);
  }

  /// GET /api/service/{id}/hitechcloud/schema - Get API schema
  Future<Map<String, dynamic>> getApiSchema([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/hitechcloud/schema', params);
  }

  /// GET /api/service/{id}/instances - List all GPU instances
  Future<Map<String, dynamic>> listInstances([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/instances', params);
  }

  /// POST /api/service/{id}/instances - Create a GPU instance
  Future<Map<String, dynamic>> createInstance([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/instances', params);
  }

  /// GET /api/service/{id}/instances/types - List available GPU instance types
  Future<Map<String, dynamic>> listInstanceTypes([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/instances/types', params);
  }

  /// GET /api/service/{id}/instances/{instance_id} - Get instance details
  Future<Map<String, dynamic>> getInstance([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/instances/{instance_id}', params);
  }

  /// POST /api/service/{id}/instances/{instance_id}/update - Update instance
  Future<Map<String, dynamic>> updateInstance([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/instances/{instance_id}/update', params);
  }

  /// POST /api/service/{id}/instances/{instance_id}/restart - Restart instance
  Future<Map<String, dynamic>> restartInstance([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/instances/{instance_id}/restart', params);
  }

  /// POST /api/service/{id}/instances/{instance_id}/delete - Delete instance
  Future<Map<String, dynamic>> deleteInstance([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/instances/{instance_id}/delete', params);
  }

  /// GET /api/service/{id}/instance - Get service instance
  Future<Map<String, dynamic>> getServiceInstance([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/instance', params);
  }

  /// POST /api/service/{id}/instance/sync - Synchronize service resource
  Future<Map<String, dynamic>> syncServiceInstance([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/instance/sync', params);
  }

  /// POST /api/service/{id}/instance/restart - Restart service instance
  Future<Map<String, dynamic>> restartServiceInstance([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/instance/restart', params);
  }

  /// POST /api/service/{id}/instance/update - Update service instance
  Future<Map<String, dynamic>> updateServiceInstance([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/instance/update', params);
  }

  /// GET /api/service/{id}/sshkeys - List SSH keys
  Future<Map<String, dynamic>> listSshKeys([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/sshkeys', params);
  }

  /// POST /api/service/{id}/sshkeys - Add SSH key
  Future<Map<String, dynamic>> addSshKey([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/sshkeys', params);
  }

  /// GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details
  Future<Map<String, dynamic>> getSshKey([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/sshkeys/{key_id}', params);
  }

  /// POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key
  Future<Map<String, dynamic>> deleteSshKey([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/sshkeys/{key_id}/delete', params);
  }

  /// POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key
  Future<Map<String, dynamic>> setDefaultSshKey([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/sshkeys/{key_id}/setdefault', params);
  }

  /// GET /api/service/{id}/volumes - List volumes
  Future<Map<String, dynamic>> listVolumes([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/volumes', params);
  }

  /// POST /api/service/{id}/volumes - Create a storage volume
  Future<Map<String, dynamic>> createVolume([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/volumes', params);
  }

  /// GET /api/service/{id}/volumes/types - List volume types
  Future<Map<String, dynamic>> listVolumeTypes([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/volumes/types', params);
  }

  /// GET /api/service/{id}/volumes/{volume_id} - Get volume details
  Future<Map<String, dynamic>> getVolume([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/volumes/{volume_id}', params);
  }

  /// POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume
  Future<Map<String, dynamic>> deleteVolume([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/volumes/{volume_id}/delete', params);
  }

  /// GET /api/service/{id}/templates/featured - List featured templates
  Future<Map<String, dynamic>> listFeaturedTemplates([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/templates/featured', params);
  }

  /// GET /api/service/{id}/templates/{template_id} - Get template details
  Future<Map<String, dynamic>> getTemplate([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/templates/{template_id}', params);
  }

  /// POST /api/service/{id}/templates/{template_id}/update - Update template
  Future<Map<String, dynamic>> updateTemplate([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/templates/{template_id}/update', params);
  }

  /// POST /api/service/{id}/templates/{template_id}/delete - Delete template
  Future<Map<String, dynamic>> deleteTemplate([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/templates/{template_id}/delete', params);
  }

  /// GET /api/service/{id}/clusters - List GPU clusters
  Future<Map<String, dynamic>> listClusters([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/clusters', params);
  }

  /// POST /api/service/{id}/clusters - Create a GPU cluster
  Future<Map<String, dynamic>> createCluster([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/clusters', params);
  }

  /// GET /api/service/{id}/clusters/types - List available GPU cluster types
  Future<Map<String, dynamic>> listClusterTypes([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/clusters/types', params);
  }

  /// GET /api/service/{id}/cluster - Get service cluster
  Future<Map<String, dynamic>> getServiceCluster([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/cluster', params);
  }

  /// GET /api/service/{id}/clusters/{cluster_id} - Get cluster details
  Future<Map<String, dynamic>> getCluster([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/clusters/{cluster_id}', params);
  }

  /// POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster
  Future<Map<String, dynamic>> deleteCluster([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/clusters/{cluster_id}/delete', params);
  }

}
