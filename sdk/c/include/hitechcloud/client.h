#ifndef HITECHCLOUD_CLIENT_H
#define HITECHCLOUD_CLIENT_H

#include "http_client.h"
#include "affiliate.h"
#include "affiliates_advanced.h"
#include "ai_factory.h"
#include "auth.h"
#include "bare_metal.h"
#include "billing.h"
#include "cart.h"
#include "ceph_s3.h"
#include "cloud_gpu.h"
#include "cloud_instance.h"
#include "cloud_service.h"
#include "cloud_vm.h"
#include "collocation.h"
#include "contacts.h"
#include "dns.h"
#include "dns_manage.h"
#include "domains.h"
#include "email_mfa_v2.h"
#include "hosting.h"
#include "ipam.h"
#include "location_v2.h"
#include "network_services.h"
#include "notifications.h"
#include "partner.h"
#include "passkey_v2.h"
#include "pmg.h"
#include "proxmox.h"
#include "proxmox_backup.h"
#include "service_status.h"
#include "services.h"
#include "ssl.h"
#include "support.h"
#include "url_shortener.h"
#include "users.h"
#include "vcloudstack.h"
#include "virtualizor.h"
#include "vneidekyc.h"
#include "will_expired.h"

typedef struct { hc_http_client_t *http; } hc_client_t;

hc_client_t *hc_client_new(const char *base_url, const char *token, long timeout, int max_retries);
void hc_client_free(hc_client_t *client);

#endif
