#' HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters
#' @param http HttpClient object
#' @return Resource object
#' @export
AiFactoryResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "AiFactoryResource"
  env
}

#' GET /api/service/{id}/templates - List templates
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listTemplates <- function(self, ...) {
  self$http$get("/api/service/{id}/templates", list(...))
}

#' POST /api/service/{id}/templates - Save a template
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
saveTemplate <- function(self, ...) {
  self$http$post("/api/service/{id}/templates", list(...))
}

#' GET /api/service/{id}/hitechcloud/mode - Get provisioning mode
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getProvisioningMode <- function(self, ...) {
  self$http$get("/api/service/{id}/hitechcloud/mode", list(...))
}

#' GET /api/service/{id}/hitechcloud/examples - Get JSON examples
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getJsonExamples <- function(self, ...) {
  self$http$get("/api/service/{id}/hitechcloud/examples", list(...))
}

#' GET /api/service/{id}/hitechcloud/schema - Get API schema
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getApiSchema <- function(self, ...) {
  self$http$get("/api/service/{id}/hitechcloud/schema", list(...))
}

#' GET /api/service/{id}/instances - List all GPU instances
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listInstances <- function(self, ...) {
  self$http$get("/api/service/{id}/instances", list(...))
}

#' POST /api/service/{id}/instances - Create a GPU instance
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createInstance <- function(self, ...) {
  self$http$post("/api/service/{id}/instances", list(...))
}

#' GET /api/service/{id}/instances/types - List available GPU instance types
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listInstanceTypes <- function(self, ...) {
  self$http$get("/api/service/{id}/instances/types", list(...))
}

#' GET /api/service/{id}/instances/{instance_id} - Get instance details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getInstance <- function(self, ...) {
  self$http$get("/api/service/{id}/instances/{instance_id}", list(...))
}

#' POST /api/service/{id}/instances/{instance_id}/update - Update instance
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateInstance <- function(self, ...) {
  self$http$post("/api/service/{id}/instances/{instance_id}/update", list(...))
}

#' POST /api/service/{id}/instances/{instance_id}/restart - Restart instance
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
restartInstance <- function(self, ...) {
  self$http$post("/api/service/{id}/instances/{instance_id}/restart", list(...))
}

#' POST /api/service/{id}/instances/{instance_id}/delete - Delete instance
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteInstance <- function(self, ...) {
  self$http$post("/api/service/{id}/instances/{instance_id}/delete", list(...))
}

#' GET /api/service/{id}/instance - Get service instance
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getServiceInstance <- function(self, ...) {
  self$http$get("/api/service/{id}/instance", list(...))
}

#' POST /api/service/{id}/instance/sync - Synchronize service resource
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
syncServiceInstance <- function(self, ...) {
  self$http$post("/api/service/{id}/instance/sync", list(...))
}

#' POST /api/service/{id}/instance/restart - Restart service instance
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
restartServiceInstance <- function(self, ...) {
  self$http$post("/api/service/{id}/instance/restart", list(...))
}

#' POST /api/service/{id}/instance/update - Update service instance
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateServiceInstance <- function(self, ...) {
  self$http$post("/api/service/{id}/instance/update", list(...))
}

#' GET /api/service/{id}/sshkeys - List SSH keys
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listSshKeys <- function(self, ...) {
  self$http$get("/api/service/{id}/sshkeys", list(...))
}

#' POST /api/service/{id}/sshkeys - Add SSH key
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
addSshKey <- function(self, ...) {
  self$http$post("/api/service/{id}/sshkeys", list(...))
}

#' GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getSshKey <- function(self, ...) {
  self$http$get("/api/service/{id}/sshkeys/{key_id}", list(...))
}

#' POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteSshKey <- function(self, ...) {
  self$http$post("/api/service/{id}/sshkeys/{key_id}/delete", list(...))
}

#' POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
setDefaultSshKey <- function(self, ...) {
  self$http$post("/api/service/{id}/sshkeys/{key_id}/setdefault", list(...))
}

#' GET /api/service/{id}/volumes - List volumes
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listVolumes <- function(self, ...) {
  self$http$get("/api/service/{id}/volumes", list(...))
}

#' POST /api/service/{id}/volumes - Create a storage volume
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createVolume <- function(self, ...) {
  self$http$post("/api/service/{id}/volumes", list(...))
}

#' GET /api/service/{id}/volumes/types - List volume types
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listVolumeTypes <- function(self, ...) {
  self$http$get("/api/service/{id}/volumes/types", list(...))
}

#' GET /api/service/{id}/volumes/{volume_id} - Get volume details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getVolume <- function(self, ...) {
  self$http$get("/api/service/{id}/volumes/{volume_id}", list(...))
}

#' POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteVolume <- function(self, ...) {
  self$http$post("/api/service/{id}/volumes/{volume_id}/delete", list(...))
}

#' GET /api/service/{id}/templates/featured - List featured templates
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listFeaturedTemplates <- function(self, ...) {
  self$http$get("/api/service/{id}/templates/featured", list(...))
}

#' GET /api/service/{id}/templates/{template_id} - Get template details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getTemplate <- function(self, ...) {
  self$http$get("/api/service/{id}/templates/{template_id}", list(...))
}

#' POST /api/service/{id}/templates/{template_id}/update - Update template
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateTemplate <- function(self, ...) {
  self$http$post("/api/service/{id}/templates/{template_id}/update", list(...))
}

#' POST /api/service/{id}/templates/{template_id}/delete - Delete template
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteTemplate <- function(self, ...) {
  self$http$post("/api/service/{id}/templates/{template_id}/delete", list(...))
}

#' GET /api/service/{id}/clusters - List GPU clusters
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listClusters <- function(self, ...) {
  self$http$get("/api/service/{id}/clusters", list(...))
}

#' POST /api/service/{id}/clusters - Create a GPU cluster
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createCluster <- function(self, ...) {
  self$http$post("/api/service/{id}/clusters", list(...))
}

#' GET /api/service/{id}/clusters/types - List available GPU cluster types
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listClusterTypes <- function(self, ...) {
  self$http$get("/api/service/{id}/clusters/types", list(...))
}

#' GET /api/service/{id}/cluster - Get service cluster
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getServiceCluster <- function(self, ...) {
  self$http$get("/api/service/{id}/cluster", list(...))
}

#' GET /api/service/{id}/clusters/{cluster_id} - Get cluster details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getCluster <- function(self, ...) {
  self$http$get("/api/service/{id}/clusters/{cluster_id}", list(...))
}

#' POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteCluster <- function(self, ...) {
  self$http$post("/api/service/{id}/clusters/{cluster_id}/delete", list(...))
}

