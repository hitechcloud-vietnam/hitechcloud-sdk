#ifndef HITECHCLOUD_CEPH_S3_H
#define HITECHCLOUD_CEPH_S3_H

#include "http_client.h"

/* Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation */
char *hc_ceph_s3_get_connection_info(hc_http_client_t *client);
char *hc_ceph_s3_get_credentials(hc_http_client_t *client);
char *hc_ceph_s3_get_usage(hc_http_client_t *client);
char *hc_ceph_s3_get_metrics(hc_http_client_t *client);
char *hc_ceph_s3_list_buckets(hc_http_client_t *client);
char *hc_ceph_s3_create_bucket(hc_http_client_t *client);
char *hc_ceph_s3_delete_bucket(hc_http_client_t *client);
char *hc_ceph_s3_list_subusers(hc_http_client_t *client);
char *hc_ceph_s3_create_subuser(hc_http_client_t *client);
char *hc_ceph_s3_delete_subuser(hc_http_client_t *client);
char *hc_ceph_s3_rotate_secret_key(hc_http_client_t *client);

#endif
