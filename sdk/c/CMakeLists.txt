cmake_minimum_required(VERSION 3.10)
project(hitechcloud_sdk C)
set(CMAKE_C_STANDARD 11)
find_package(CURL REQUIRED)
add_library(hitechcloud_sdk SHARED
    src/http_client.c
    src/affiliate.c
    src/affiliates_advanced.c
    src/ai_factory.c
    src/auth.c
    src/bare_metal.c
    src/billing.c
    src/cart.c
    src/ceph_s3.c
    src/cloud_gpu.c
    src/cloud_instance.c
    src/cloud_service.c
    src/cloud_vm.c
    src/collocation.c
    src/contacts.c
    src/dns.c
    src/dns_manage.c
    src/domains.c
    src/email_mfa_v2.c
    src/hosting.c
    src/ipam.c
    src/location_v2.c
    src/network_services.c
    src/notifications.c
    src/partner.c
    src/passkey_v2.c
    src/pmg.c
    src/proxmox.c
    src/proxmox_backup.c
    src/service_status.c
    src/services.c
    src/ssl.c
    src/support.c
    src/url_shortener.c
    src/users.c
    src/vcloudstack.c
    src/virtualizor.c
    src/vneidekyc.c
    src/will_expired.c
    src/client.c
)
target_include_directories(hitechcloud_sdk PUBLIC include ${CURL_INCLUDE_DIRS})
target_link_libraries(hitechcloud_sdk ${CURL_LIBRARIES})
install(TARGETS hitechcloud_sdk LIBRARY DESTINATION lib)
install(DIRECTORY include/ DESTINATION include)
