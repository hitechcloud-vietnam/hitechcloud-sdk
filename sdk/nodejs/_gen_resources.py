#!/usr/bin/env python3
"""Generate Node.js SDK resource files for all 38 API groups"""
import os

SDK_DIR = "/www/wwwroot/apitool2.hitechcloud.vn/hitechcloud-sdk/sdk/nodejs/src/resources"

# All resources: (filename, className, camelName, methods)
# Each method: (name, httpMethod, path, params_desc)
RESOURCES = {
    "auth": {
        "class": "AuthResource",
        "methods": [
            ("login", "post", "/api/login", ["email", "password"], "Login"),
            ("logout", "post", "/api/logout", [], "Logout"),
            ("refreshToken", "post", "/api/token", [], "Refresh token"),
            ("revokeToken", "post", "/api/revoke", [], "Revoke token"),
            ("passwordReset", "post", "/api/passwordreset", ["email"], "Password reset"),
            ("signup", "post", "/api/signup", ["email", "password", "firstName", "lastName"], "Signup"),
        ],
    },
    "users": {
        "class": "UsersResource",
        "methods": [
            ("getDetails", "get", "/api/details", [], "Get user details"),
            ("updateDetails", "put", "/api/details", ["data"], "Update user details"),
            ("getLogs", "get", "/api/logs", ["params"], "Get user logs"),
        ],
    },
    "services": {
        "class": "ServicesResource",
        "methods": [
            ("list", "get", "/api/service", ["params"], "List services"),
            ("get", "get", "/api/service/{id}", ["serviceId"], "Get service"),
            ("getMethods", "get", "/api/service/{id}/methods", ["serviceId"], "Get service methods"),
            ("cancel", "post", "/api/service/{id}/cancel", ["serviceId", "data"], "Cancel service"),
            ("getLabel", "get", "/api/service/{id}/label", ["serviceId"], "Get service label"),
            ("setLabel", "post", "/api/service/{id}/label", ["serviceId", "data"], "Set service label"),
            ("renew", "post", "/api/service/{id}/renew", ["serviceId"], "Renew service"),
            ("getCycle", "get", "/api/service/{id}/cycle", ["serviceId"], "Get service cycle"),
            ("setCycle", "post", "/api/service/{id}/cycle", ["serviceId", "data"], "Set service cycle"),
        ],
    },
    "domains": {
        "class": "DomainsResource",
        "methods": [
            ("whois", "get", "/api/whois/{domain}", ["domain"], "WHOIS lookup"),
            ("list", "get", "/api/domain", ["params"], "List domains"),
            ("get", "get", "/api/domain/{id}", ["domainId"], "Get domain"),
            ("getByName", "get", "/api/domain/name/{name}", ["name"], "Get domain by name"),
            ("getNameservers", "get", "/api/domain/{id}/ns", ["domainId"], "Get nameservers"),
            ("setNameservers", "put", "/api/domain/{id}/ns", ["domainId", "data"], "Set nameservers"),
            ("getEppCode", "get", "/api/domain/{id}/epp", ["domainId"], "Get EPP code"),
            ("sync", "get", "/api/domain/{id}/sync", ["domainId"], "Sync domain"),
            ("getRegLock", "get", "/api/domain/{id}/reglock", ["domainId"], "Get registrar lock"),
            ("setRegLock", "put", "/api/domain/{id}/reglock", ["domainId", "data"], "Set registrar lock"),
            ("toggleIdProtection", "put", "/api/domain/{id}/idprotection", ["domainId", "data"], "Toggle ID protection"),
            ("getContacts", "get", "/api/domain/{id}/contact", ["domainId"], "Get domain contacts"),
            ("setContacts", "put", "/api/domain/{id}/contact", ["domainId", "data"], "Set domain contacts"),
            ("getEmailForwarding", "get", "/api/domain/{id}/email/forwarding", ["domainId"], "Get email forwarding"),
            ("setEmailForwarding", "put", "/api/domain/{id}/email/forwarding", ["domainId", "data"], "Set email forwarding"),
            ("checkAvailability", "get", "/api/domain/availability/{domain}", ["domain"], "Check availability"),
            ("listOrders", "get", "/api/domain/order", ["params"], "List domain orders"),
            ("createOrder", "post", "/api/domain/order", ["data"], "Create domain order"),
            ("getOrderForm", "get", "/api/domain/order/{id}/form", ["orderId"], "Get order form"),
            ("renew", "post", "/api/domain/{id}/renew", ["domainId", "data"], "Renew domain"),
            ("whoisLookup", "get", "/api/whoislookup/{domain}", ["domain"], "WHOIS lookup v2"),
            ("getDocuments", "get", "/api/domain/{id}/documents", ["domainId"], "Get domain documents"),
        ],
    },
    "dns_manage": {
        "class": "DnsManageResource",
        "methods": [
            ("registerNameservers", "post", "/api/domain/{id}/reg", ["domainId", "data"], "Register nameservers"),
            ("getRecords", "get", "/api/domain/{id}/dns", ["domainId"], "Get DNS records"),
            ("createRecord", "post", "/api/domain/{id}/dns", ["domainId", "data"], "Create DNS record"),
            ("updateRecord", "put", "/api/domain/{id}/dns/{index}", ["domainId", "index", "data"], "Update DNS record"),
            ("deleteRecord", "delete", "/api/domain/{id}/dns/{index}", ["domainId", "index"], "Delete DNS record"),
            ("getRecordTypes", "get", "/api/domain/{id}/dns/types", ["domainId"], "Get record types"),
            ("getDnssecFlags", "get", "/api/domain/{id}/dnssec/flags", ["domainId"], "Get DNSSEC flags"),
            ("getDnssec", "get", "/api/domain/{id}/dnssec", ["domainId"], "Get DNSSEC records"),
            ("createDnssec", "post", "/api/domain/{id}/dnssec", ["domainId", "data"], "Create DNSSEC record"),
            ("deleteDnssec", "delete", "/api/domain/{id}/dnssec", ["domainId", "data"], "Delete DNSSEC record"),
        ],
    },
    "dns": {
        "class": "DnsResource",
        "methods": [
            ("listZones", "get", "/api/dns", ["params"], "List DNS zones"),
            ("createZone", "post", "/api/service/{service_id}/dns", ["serviceId", "data"], "Create DNS zone"),
            ("getZones", "get", "/api/service/{service_id}/dns", ["serviceId"], "Get service DNS zones"),
            ("getZone", "get", "/api/service/{service_id}/dns/{zone_id}", ["serviceId", "zoneId"], "Get DNS zone"),
            ("deleteZone", "delete", "/api/service/{service_id}/dns/{zone_id}", ["serviceId", "zoneId"], "Delete DNS zone"),
            ("createRecord", "post", "/api/service/{service_id}/dns/{zone_id}/records", ["serviceId", "zoneId", "data"], "Create record"),
            ("updateRecord", "put", "/api/service/{service_id}/dns/{zone_id}/records/{record_id}", ["serviceId", "zoneId", "recordId", "data"], "Update record"),
            ("deleteRecord", "delete", "/api/service/{service_id}/dns/{zone_id}/records/{record_id}", ["serviceId", "zoneId", "recordId"], "Delete record"),
        ],
    },
    "ssl": {
        "class": "SSLResource",
        "methods": [
            ("list", "get", "/api/certificate", ["params"], "List certificates"),
            ("get", "get", "/api/certificate/{id}", ["certId"], "Get certificate"),
            ("getCrt", "get", "/api/certificate/{id}/crt", ["certId"], "Get certificate CRT"),
            ("listOrders", "get", "/api/certificate/order", ["params"], "List SSL orders"),
            ("createOrder", "post", "/api/certificate/order", ["data"], "Create SSL order"),
            ("getOrderSoftware", "get", "/api/certificate/order/{product_id}/software", ["productId"], "Get order software"),
        ],
    },
    "billing": {
        "class": "BillingResource",
        "methods": [
            ("getBalance", "get", "/api/balance", [], "Get balance"),
            ("listInvoices", "get", "/api/invoice", ["params"], "List invoices"),
            ("getInvoice", "get", "/api/invoice/{id}", ["invoiceId"], "Get invoice"),
            ("applyCredit", "post", "/api/invoice/{id}/credit", ["invoiceId", "data"], "Apply credit"),
            ("listPayments", "get", "/api/payment", ["params"], "List payments"),
            ("getPaymentFees", "get", "/api/payment/fees", [], "Get payment fees"),
        ],
    },
    "support": {
        "class": "SupportResource",
        "methods": [
            ("listTickets", "get", "/api/tickets", ["params"], "List tickets"),
            ("createTicket", "post", "/api/tickets", ["data"], "Create ticket"),
            ("getTicket", "get", "/api/tickets/{number}", ["ticketNumber"], "Get ticket"),
            ("replyTicket", "post", "/api/tickets/{number}", ["ticketNumber", "data"], "Reply to ticket"),
            ("getAttachment", "get", "/api/ticket/attachment/{file}", ["file"], "Get attachment"),
            ("openTicket", "put", "/api/tickets/{number}/open", ["ticketNumber"], "Open ticket"),
            ("closeTicket", "put", "/api/tickets/{number}/close", ["ticketNumber"], "Close ticket"),
            ("getDepartments", "get", "/api/ticket/departments", [], "Get departments"),
            ("listNews", "get", "/api/news", ["params"], "List news"),
            ("getNews", "get", "/api/news/{news_id}", ["newsId"], "Get news article"),
            ("listKnowledgebase", "get", "/api/knowledgebase", ["params"], "List knowledgebase"),
            ("getKnowledgebaseCategory", "get", "/api/knowledgebase/{category_id}", ["categoryId"], "Get KB category"),
            ("getKnowledgebaseArticle", "get", "/api/knowledgebase/article/{article_id}", ["articleId"], "Get KB article"),
        ],
    },
    "contacts": {
        "class": "ContactsResource",
        "methods": [
            ("list", "get", "/api/contact", ["params"], "List contacts"),
            ("create", "post", "/api/contact", ["data"], "Create contact"),
            ("getPrivileges", "get", "/api/contact/privileges", [], "Get contact privileges"),
            ("get", "get", "/api/contact/{id}", ["contactId"], "Get contact"),
            ("update", "put", "/api/contact/{id}", ["contactId", "data"], "Update contact"),
        ],
    },
    "cart": {
        "class": "CartResource",
        "methods": [
            ("listCategories", "get", "/api/category", [], "List categories"),
            ("listProducts", "get", "/api/category/{category_id}/product", ["categoryId"], "List products"),
            ("getProduct", "get", "/api/order/{product_id}", ["productId"], "Get product"),
            ("configureProduct", "post", "/api/order/{product_id}", ["productId", "data"], "Configure product"),
            ("checkout", "post", "/api/order", ["data"], "Checkout"),
            ("getQuote", "post", "/api/quote", ["data"], "Get quote"),
        ],
    },
    "notifications": {
        "class": "NotificationsResource",
        "methods": [
            ("list", "get", "/api/notifications", ["params"], "List notifications"),
            ("getNew", "get", "/api/notifications/new", [], "Get new notifications"),
            ("acknowledge", "put", "/api/notifications/{id}/ack", ["notificationId"], "Acknowledge notification"),
        ],
    },
    "affiliate": {
        "class": "AffiliateResource",
        "methods": [
            ("getSummary", "get", "/api/affiliates/summary", [], "Get affiliate summary"),
            ("listCampaigns", "get", "/api/affiliates/campaigns", [], "List campaigns"),
            ("listCommissions", "get", "/api/affiliates/commissions", ["params"], "List commissions"),
            ("listPayouts", "get", "/api/affiliates/payouts", [], "List payouts"),
            ("listVouchers", "get", "/api/affiliates/vouchers", [], "List vouchers"),
            ("listCommissionPlans", "get", "/api/affiliates/commissionplans", [], "List commission plans"),
        ],
    },
    "cloud_gpu": {
        "class": "CloudGpuResource",
        "methods": [
            ("reboot", "put", "/api/service/{id}/vms/reboot", ["serviceId", "data"], "Reboot VM"),
            ("stop", "put", "/api/service/{id}/vms/stop", ["serviceId", "data"], "Stop VM"),
            ("start", "put", "/api/service/{id}/vms/start", ["serviceId", "data"], "Start VM"),
            ("getFirewall", "get", "/api/service/{id}/vms/firewall", ["serviceId"], "Get firewall rules"),
            ("createFirewallRule", "post", "/api/service/{id}/vms/firewall", ["serviceId", "data"], "Create firewall rule"),
            ("deleteFirewallRule", "delete", "/api/service/{id}/vms/firewall/{position}", ["serviceId", "position"], "Delete firewall rule"),
        ],
    },
    "virtualizor": {
        "class": "VirtualizorResource",
        "methods": [
            ("suspend", "post", "/api/service/{id}/vms/{vmid}/suspend", ["serviceId", "vmId"], "Suspend VM"),
            ("unsuspend", "post", "/api/service/{id}/vms/{vmid}/unsuspend", ["serviceId", "vmId"], "Unsuspend VM"),
            ("getRebuildInfo", "get", "/api/service/{id}/vms/{vmid}/rebuild", ["serviceId", "vmId"], "Get rebuild info"),
            ("addSshKey", "post", "/api/service/{id}/vms/{vmid}/addsshkey", ["serviceId", "vmId", "data"], "Add SSH key"),
        ],
    },
    "cloud_service": {
        "class": "CloudServiceResource",
        "methods": [
            ("shutdown", "post", "/api/service/{id}/vms/{vmid}/shutdown", ["serviceId", "vmId"], "Shutdown VM"),
            ("reset", "post", "/api/service/{id}/vms/{vmid}/reset", ["serviceId", "vmId"], "Reset VM"),
            ("setHostname", "post", "/api/service/{id}/vms/{vmid}/hostname", ["serviceId", "vmId", "data"], "Set hostname"),
            ("getIpPool", "get", "/api/service/{id}/vms/{vmid}/ippool", ["serviceId", "vmId"], "Get IP pool"),
            ("assignIp", "post", "/api/service/{id}/vms/{vmid}/ippool/{pool}", ["serviceId", "vmId", "pool"], "Assign IP"),
            ("listNetworks", "get", "/api/service/{id}/networks", ["serviceId"], "List networks"),
            ("createInterface", "post", "/api/service/{id}/vms/{vmid}/interfaces", ["serviceId", "vmId", "data"], "Create interface"),
            ("getInterface", "get", "/api/service/{id}/vms/{vmid}/interfaces/{iface}", ["serviceId", "vmId", "iface"], "Get interface"),
            ("updateInterface", "put", "/api/service/{id}/vms/{vmid}/interfaces/{iface}", ["serviceId", "vmId", "iface", "data"], "Update interface"),
            ("deleteInterface", "delete", "/api/service/{id}/vms/{vmid}/interfaces/{iface}", ["serviceId", "vmId", "iface"], "Delete interface"),
        ],
    },
    "network_services": {
        "class": "NetworkServicesResource",
        "methods": [
            ("getIps", "get", "/api/service/{id}/ip", ["serviceId"], "Get IPs"),
            ("getRdns", "get", "/api/service/{id}/rdns", ["serviceId"], "Get rDNS"),
            ("setRdns", "post", "/api/service/{id}/rdns", ["serviceId", "data"], "Set rDNS"),
        ],
    },
    "service_status": {
        "class": "ServiceStatusResource",
        "methods": [
            ("list", "get", "/api/statuses", ["params"], "List statuses"),
            ("update", "put", "/api/statuses/{id}", ["statusId", "data"], "Update status"),
        ],
    },
    "bare_metal": {
        "class": "BareMetalResource",
        "methods": [
            ("getReinstallTemplates", "get", "/api/service/{id}/reinstall/templates", ["serviceId"], "Get reinstall templates"),
            ("cancelDiag", "post", "/api/service/{id}/diag/cancel", ["serviceId"], "Cancel diagnostics"),
            ("getDiagTemplates", "get", "/api/service/{id}/diag/templates", ["serviceId"], "Get diag templates"),
            ("getDiag", "get", "/api/service/{id}/diag", ["serviceId"], "Get diagnostics"),
            ("runDiag", "post", "/api/service/{id}/diag", ["serviceId", "data"], "Run diagnostics"),
            ("getRescueTemplates", "get", "/api/service/{id}/rescue/templates", ["serviceId"], "Get rescue templates"),
            ("getRescue", "get", "/api/service/{id}/rescue", ["serviceId"], "Get rescue mode"),
            ("startRescue", "post", "/api/service/{id}/rescue", ["serviceId", "data"], "Start rescue mode"),
            ("cancelRescue", "post", "/api/service/{id}/rescue/cancel", ["serviceId"], "Cancel rescue mode"),
            ("getInfo", "get", "/api/service/{id}/info", ["serviceId"], "Get server info"),
            ("setHostname", "post", "/api/service/{id}/hostname", ["serviceId", "data"], "Set hostname"),
            ("listIps", "get", "/api/service/{id}/ips", ["serviceId"], "List IPs"),
            ("addIp", "post", "/api/service/{id}/ips", ["serviceId", "data"], "Add IP"),
            ("listVlans", "get", "/api/service/{id}/vlans", ["serviceId"], "List VLANs"),
            ("getIp", "get", "/api/service/{id}/ips/{ip}", ["serviceId", "ip"], "Get IP details"),
            ("updateIp", "put", "/api/service/{id}/ips/{ip}", ["serviceId", "ip", "data"], "Update IP"),
            ("getReinstall", "get", "/api/service/{id}/reinstall", ["serviceId"], "Get reinstall info"),
            ("reinstall", "post", "/api/service/{id}/reinstall", ["serviceId", "data"], "Reinstall server"),
            ("getStatus", "get", "/api/service/{id}/status", ["serviceId"], "Get server status"),
            ("powerAction", "post", "/api/service/{id}/power/{action}", ["serviceId", "action"], "Power action"),
            ("getServerStock", "get", "/api/serverstock", ["params"], "Get server stock"),
        ],
    },
    "collocation": {
        "class": "CollocationResource",
        "methods": [
            ("listPdu", "get", "/api/service/{id}/pdu", ["serviceId"], "List PDU ports"),
            ("getPduPort", "get", "/api/service/{id}/pdu/{port}", ["serviceId", "port"], "Get PDU port"),
            ("setPduPort", "post", "/api/service/{id}/pdu/{port}", ["serviceId", "port", "data"], "Set PDU port state"),
        ],
    },
    "vcloudstack": {
        "class": "VCloudStackResource",
        "methods": [
            ("rescue", "post", "/api/service/{id}/vms/{vmid}/rescue", ["serviceId", "vmId"], "Rescue VM"),
            ("unrescue", "post", "/api/service/{id}/vms/{vmid}/unrescue", ["serviceId", "vmId"], "Unrescue VM"),
            ("getConsole", "get", "/api/service/{id}/vms/{vmid}/console", ["serviceId", "vmId"], "Get console URL"),
            ("getUsage", "get", "/api/service/{id}/vms/{vmid}/usage", ["serviceId", "vmId"], "Get VM usage"),
        ],
    },
    "hosting": {
        "class": "HostingResource",
        "methods": [
            ("getReinstall", "get", "/api/service/{id}/reinstall", ["serviceId"], "Get reinstall info"),
            ("reinstall", "post", "/api/service/{id}/reinstall", ["serviceId", "data"], "Reinstall"),
            ("getStatus", "get", "/api/service/{id}/status", ["serviceId"], "Get status"),
            ("getBandwidthGraphs", "get", "/api/service/{id}/bandwidth-graphs", ["serviceId"], "Get bandwidth graphs"),
            ("getBandwidth", "get", "/api/service/{id}/bandwidth", ["serviceId"], "Get bandwidth"),
            ("resetPassword", "post", "/api/service/{id}/reset", ["serviceId"], "Reset password"),
        ],
    },
    "location_v2": {
        "class": "LocationV2Resource",
        "methods": [
            ("listCountries", "get", "/api/location_v2/countries", [], "List countries"),
            ("listStates", "get", "/api/location_v2/{code}/state", ["code"], "List states"),
            ("listCities", "get", "/api/location_v2/state/{id}/city", ["stateId"], "List cities"),
            ("getCity", "get", "/api/location_v2/state/city/{name}", ["name"], "Get city"),
        ],
    },
    "cloud_instance": {
        "class": "CloudInstanceResource",
        "methods": [
            ("list", "get", "/api/service/{id}/vms", ["serviceId"], "List VMs"),
            ("create", "post", "/api/service/{id}/vms", ["serviceId", "data"], "Create VM"),
            ("get", "get", "/api/service/{id}/vms/{vmid}", ["serviceId", "vmId"], "Get VM"),
            ("delete", "delete", "/api/service/{id}/vms/{vmid}", ["serviceId", "vmId"], "Delete VM"),
            ("update", "put", "/api/service/{id}/vms/{vmid}", ["serviceId", "vmId", "data"], "Update VM"),
            ("stop", "post", "/api/service/{id}/vms/{vmid}/stop", ["serviceId", "vmId"], "Stop VM"),
            ("start", "post", "/api/service/{id}/vms/{vmid}/start", ["serviceId", "vmId"], "Start VM"),
            ("reboot", "post", "/api/service/{id}/vms/{vmid}/reboot", ["serviceId", "vmId"], "Reboot VM"),
            ("resetPassword", "post", "/api/service/{id}/vms/{vmid}/resetpwd", ["serviceId", "vmId", "data"], "Reset password"),
            ("rebuild", "post", "/api/service/{id}/vms/{vmid}/rebuild", ["serviceId", "vmId", "data"], "Rebuild VM"),
            ("listIps", "get", "/api/service/{id}/vms/{vmid}/ips", ["serviceId", "vmId"], "List VM IPs"),
            ("addIp", "post", "/api/service/{id}/vms/{vmid}/ips", ["serviceId", "vmId", "data"], "Add IP"),
            ("listInterfaces", "get", "/api/service/{id}/vms/{vmid}/interfaces", ["serviceId", "vmId"], "List interfaces"),
            ("getCpuUsage", "get", "/api/service/{id}/vms/{vmid}/usage/cpu", ["serviceId", "vmId"], "Get CPU usage"),
            ("getNetUsage", "get", "/api/service/{id}/vms/{vmid}/usage/net", ["serviceId", "vmId"], "Get network usage"),
            ("getDiskUsage", "get", "/api/service/{id}/vms/{vmid}/usage/disk", ["serviceId", "vmId"], "Get disk usage"),
            ("listStorage", "get", "/api/service/{id}/vms/{vmid}/storage", ["serviceId", "vmId"], "List storage"),
            ("resizeStorage", "put", "/api/service/{id}/vms/{vmid}/storage/{diskid}", ["serviceId", "vmId", "diskId", "data"], "Resize storage"),
            ("listImages", "get", "/api/service/{id}/images", ["serviceId"], "List images"),
            ("createImage", "post", "/api/service/{id}/images", ["serviceId", "data"], "Create image"),
            ("getInterfaceIps", "get", "/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips", ["serviceId", "vmId", "iface"], "Get interface IPs"),
            ("deleteIp", "delete", "/api/service/{id}/vms/{vmid}/ips/{ipid}", ["serviceId", "vmId", "ipId"], "Delete IP"),
            ("getRdns", "get", "/api/service/{id}/vms/{vmid}/rdns", ["serviceId", "vmId"], "Get rDNS"),
            ("setRdns", "post", "/api/service/{id}/vms/{vmid}/rdns", ["serviceId", "vmId", "data"], "Set rDNS"),
            ("rebuildNetwork", "post", "/api/service/{id}/vms/{vmid}/rebuild_network", ["serviceId", "vmId"], "Rebuild network"),
        ],
    },
    "cloud_vm": {
        "class": "CloudVmResource",
        "methods": [
            ("getUpgrade", "get", "/api/service/{id}/upgrade", ["serviceId"], "Get upgrade options"),
            ("upgrade", "post", "/api/service/{id}/upgrade", ["serviceId", "data"], "Upgrade VM"),
            ("getResources", "get", "/api/service/{id}/resources", ["serviceId"], "Get resources"),
            ("getTemplates", "get", "/api/service/{id}/templates/{vmid}", ["serviceId", "vmId"], "Get VM templates"),
            ("getMemoryUsage", "get", "/api/service/{id}/vms/{vmid}/usage/memory", ["serviceId", "vmId"], "Get memory usage"),
            ("listVmImages", "get", "/api/service/{id}/vms/{vmid}/images", ["serviceId", "vmId"], "List VM images"),
            ("createVmImage", "post", "/api/service/{id}/vms/{vmid}/images", ["serviceId", "vmId", "data"], "Create VM image"),
            ("setBootOrder", "post", "/api/service/{id}/vms/{vmid}/boot", ["serviceId", "vmId", "data"], "Set boot order"),
            ("toggleTunTap", "post", "/api/service/{id}/vms/{vmid}/tuntap", ["serviceId", "vmId", "data"], "Toggle TUN/TAP"),
        ],
    },
    "affiliates_advanced": {
        "class": "AffiliatesAdvancedResource",
        "methods": [
            ("getInfo", "get", "/api/affiliates_adv/{client_id}/info", ["clientId"], "Get affiliate info"),
            ("getStats", "get", "/api/affiliates_adv/{client_id}/stats", ["clientId"], "Get stats"),
            ("getCommissionPlans", "get", "/api/affiliates_adv/{client_id}/commission-plans", ["clientId"], "Get commission plans"),
            ("getVouchers", "get", "/api/affiliates_adv/{client_id}/vouchers", ["clientId"], "Get vouchers"),
            ("getCommissions", "get", "/api/affiliates_adv/{client_id}/commissions", ["clientId"], "Get commissions"),
            ("getReferrals", "get", "/api/affiliates_adv/{client_id}/referrals", ["clientId"], "Get referrals"),
            ("getPayouts", "get", "/api/affiliates_adv/{client_id}/payouts", ["clientId"], "Get payouts"),
            ("getCampaigns", "get", "/api/affiliates_adv/{client_id}/campaigns", ["clientId"], "Get campaigns"),
            ("getAudit", "get", "/api/affiliates_adv/{client_id}/audit", ["clientId"], "Get audit log"),
            ("activate", "post", "/api/affiliates_adv/{client_id}/activate", ["clientId"], "Activate affiliate"),
            ("setCommissionPlan", "post", "/api/affiliates_adv/{client_id}/commission-plan/{commission_id}", ["clientId", "commissionId"], "Set commission plan"),
            ("generateVoucher", "post", "/api/affiliates_adv/{client_id}/vouchers/{plan_id}", ["clientId", "planId"], "Generate voucher"),
            ("deleteVoucher", "delete", "/api/affiliates_adv/{client_id}/vouchers/{voucher_id}", ["clientId", "voucherId"], "Delete voucher"),
            ("setLandingPage", "post", "/api/affiliates_adv/{client_id}/landing-page", ["clientId", "data"], "Set landing page"),
        ],
    },
    "ai_factory": {
        "class": "AiFactoryResource",
        "methods": [
            ("listTemplates", "get", "/api/service/{id}/templates", ["serviceId"], "List templates"),
            ("saveTemplate", "post", "/api/service/{id}/templates", ["serviceId", "data"], "Save template"),
            ("getProvisioningMode", "get", "/api/service/{id}/hitechcloud/mode", ["serviceId"], "Get provisioning mode"),
            ("getJsonExamples", "get", "/api/service/{id}/hitechcloud/examples", ["serviceId"], "Get JSON examples"),
            ("getApiSchema", "get", "/api/service/{id}/hitechcloud/schema", ["serviceId"], "Get API schema"),
            ("listFeaturedTemplates", "get", "/api/service/{id}/templates/featured", ["serviceId"], "List featured templates"),
            ("getTemplate", "get", "/api/service/{id}/templates/{template_id}", ["serviceId", "templateId"], "Get template"),
            ("updateTemplate", "post", "/api/service/{id}/templates/{template_id}/update", ["serviceId", "templateId", "data"], "Update template"),
            ("deleteTemplate", "post", "/api/service/{id}/templates/{template_id}/delete", ["serviceId", "templateId"], "Delete template"),
            ("listInstances", "get", "/api/service/{id}/instances", ["serviceId"], "List instances"),
            ("createInstance", "post", "/api/service/{id}/instances", ["serviceId", "data"], "Create instance"),
            ("listInstanceTypes", "get", "/api/service/{id}/instances/types", ["serviceId"], "List instance types"),
            ("getInstance", "get", "/api/service/{id}/instances/{instance_id}", ["serviceId", "instanceId"], "Get instance"),
            ("updateInstance", "post", "/api/service/{id}/instances/{instance_id}/update", ["serviceId", "instanceId", "data"], "Update instance"),
            ("restartInstance", "post", "/api/service/{id}/instances/{instance_id}/restart", ["serviceId", "instanceId"], "Restart instance"),
            ("deleteInstance", "post", "/api/service/{id}/instances/{instance_id}/delete", ["serviceId", "instanceId"], "Delete instance"),
            ("getServiceInstance", "get", "/api/service/{id}/instance", ["serviceId"], "Get service instance"),
            ("syncServiceInstance", "post", "/api/service/{id}/instance/sync", ["serviceId"], "Sync service instance"),
            ("restartServiceInstance", "post", "/api/service/{id}/instance/restart", ["serviceId"], "Restart service instance"),
            ("updateServiceInstance", "post", "/api/service/{id}/instance/update", ["serviceId", "data"], "Update service instance"),
            ("listSshKeys", "get", "/api/service/{id}/sshkeys", ["serviceId"], "List SSH keys"),
            ("addSshKey", "post", "/api/service/{id}/sshkeys", ["serviceId", "data"], "Add SSH key"),
            ("getSshKey", "get", "/api/service/{id}/sshkeys/{key_id}", ["serviceId", "keyId"], "Get SSH key"),
            ("deleteSshKey", "post", "/api/service/{id}/sshkeys/{key_id}/delete", ["serviceId", "keyId"], "Delete SSH key"),
            ("setDefaultSshKey", "post", "/api/service/{id}/sshkeys/{key_id}/setdefault", ["serviceId", "keyId"], "Set default SSH key"),
            ("listVolumes", "get", "/api/service/{id}/volumes", ["serviceId"], "List volumes"),
            ("createVolume", "post", "/api/service/{id}/volumes", ["serviceId", "data"], "Create volume"),
            ("listVolumeTypes", "get", "/api/service/{id}/volumes/types", ["serviceId"], "List volume types"),
            ("getVolume", "get", "/api/service/{id}/volumes/{volume_id}", ["serviceId", "volumeId"], "Get volume"),
            ("deleteVolume", "post", "/api/service/{id}/volumes/{volume_id}/delete", ["serviceId", "volumeId"], "Delete volume"),
            ("listClusters", "get", "/api/service/{id}/clusters", ["serviceId"], "List clusters"),
            ("createCluster", "post", "/api/service/{id}/clusters", ["serviceId", "data"], "Create cluster"),
            ("listClusterTypes", "get", "/api/service/{id}/clusters/types", ["serviceId"], "List cluster types"),
            ("getServiceCluster", "get", "/api/service/{id}/cluster", ["serviceId"], "Get service cluster"),
            ("getCluster", "get", "/api/service/{id}/clusters/{cluster_id}", ["serviceId", "clusterId"], "Get cluster"),
            ("deleteCluster", "post", "/api/service/{id}/clusters/{cluster_id}/delete", ["serviceId", "clusterId"], "Delete cluster"),
        ],
    },
    "passkey_v2": {
        "class": "PasskeyV2Resource",
        "methods": [
            ("getMfaStatus", "get", "/api/passkeyv2/status/{user_type}/{user_id}", ["userType", "userId"], "Get MFA status"),
            ("listCredentials", "get", "/api/passkeyv2/credentials/{user_type}/{user_id}", ["userType", "userId"], "List credentials"),
            ("deleteCredential", "post", "/api/passkeyv2/credentials/{user_type}/{user_id}/delete", ["userType", "userId", "data"], "Delete credential"),
            ("sendEmailOtp", "post", "/api/passkeyv2/email_otp/send", ["data"], "Send email OTP"),
            ("verifyEmailOtp", "post", "/api/passkeyv2/email_otp/verify", ["data"], "Verify email OTP"),
            ("disableMfa", "post", "/api/passkeyv2/disable/{user_type}/{user_id}", ["userType", "userId"], "Disable MFA"),
        ],
    },
    "email_mfa_v2": {
        "class": "EmailMfaV2Resource",
        "methods": [
            ("getMfaStatus", "get", "/api/email_mfa_v2/status/{user_type}/{user_id}", ["userType", "userId"], "Get MFA status"),
            ("sendCode", "post", "/api/email_mfa_v2/send", ["data"], "Send code"),
            ("verifyCode", "post", "/api/email_mfa_v2/verify", ["data"], "Verify code"),
            ("listActiveCodes", "get", "/api/email_mfa_v2/list/{user_type}/{user_id}", ["userType", "userId"], "List active codes"),
            ("revokeAllCodes", "post", "/api/email_mfa_v2/revokeall", ["data"], "Revoke all codes"),
            ("disableMfa", "post", "/api/email_mfa_v2/disable", [], "Disable MFA"),
        ],
    },
    "vneidekyc": {
        "class": "VNeIdeKycResource",
        "methods": [
            ("startPersonalEkyc", "get", "/api/vneidekyc/ekyc/session", ["params"], "Start personal eKYC"),
            ("getEkycSession", "get", "/api/vneidekyc/ekyc/session/{session_hash}", ["sessionHash"], "Get eKYC session"),
            ("listClientSessions", "get", "/api/vneidekyc/ekyc/list/{client_id}", ["clientId"], "List client sessions"),
            ("uploadFile", "post", "/api/vneidekyc/ekyc/{session_hash}/upload", ["sessionHash", "data"], "Upload file"),
            ("submitEkyc", "post", "/api/vneidekyc/ekyc/{session_hash}/submit", ["sessionHash", "data"], "Submit eKYC"),
            ("cancelSession", "post", "/api/vneidekyc/ekyc/{session_hash}/cancel", ["sessionHash"], "Cancel session"),
            ("acceptEkyc", "post", "/api/vneidekyc/ekyc/{session_hash}/accept", ["sessionHash"], "Accept eKYC"),
            ("rejectEkyc", "post", "/api/vneidekyc/ekyc/{session_hash}/reject", ["sessionHash", "data"], "Reject eKYC"),
            ("lookupOrganization", "post", "/api/vneidekyc/org/lookup", ["data"], "Lookup organization"),
            ("startOrgVerification", "post", "/api/vneidekyc/org/start", ["data"], "Start org verification"),
            ("getOrganization", "get", "/api/vneidekyc/org/{org_hash}", ["orgHash"], "Get organization"),
            ("acceptOrganization", "post", "/api/vneidekyc/org/{org_hash}/accept", ["orgHash"], "Accept organization"),
            ("rejectOrganization", "post", "/api/vneidekyc/org/{org_hash}/reject", ["orgHash", "data"], "Reject organization"),
            ("uploadSignedPdf", "post", "/api/vneidekyc/pdf/upload", ["data"], "Upload signed PDF"),
            ("getSignedPdf", "get", "/api/vneidekyc/pdf/{pdf_hash}", ["pdfHash"], "Get signed PDF"),
            ("getClientStatus", "get", "/api/vneidekyc/client/{client_id}/status", ["clientId"], "Get client status"),
        ],
    },
    "will_expired": {
        "class": "WillExpiredResource",
        "methods": [
            ("list", "get", "/api/willexpired", ["params"], "List expiring items"),
            ("getSummary", "get", "/api/willexpired/summary", ["params"], "Get summary"),
            ("getConfig", "get", "/api/willexpired/config", [], "Get config"),
            ("listInvoices", "get", "/api/willexpired/invoices", [], "List invoices"),
            ("listRequests", "get", "/api/willexpired/requests", [], "List requests"),
            ("exportAll", "get", "/api/willexpired/export", [], "Export all"),
            ("getItem", "get", "/api/willexpired/{type}/{id}", ["itemType", "itemId"], "Get item"),
            ("renew", "post", "/api/willexpired/{type}/{id}/renew", ["itemType", "itemId"], "Renew item"),
            ("getAutorenew", "get", "/api/willexpired/{type}/{id}/autorenew", ["itemType", "itemId"], "Get auto-renew"),
            ("setAutorenew", "put", "/api/willexpired/{type}/{id}/autorenew", ["itemType", "itemId", "data"], "Set auto-renew"),
        ],
    },
    "url_shortener": {
        "class": "UrlShortenerResource",
        "methods": [
            ("shorten", "post", "/api/url-shortener/shorten", ["data"], "Shorten URL"),
            ("listLinks", "get", "/api/url-shortener/links", [], "List links"),
            ("getConfig", "get", "/api/url-shortener/config", [], "Get config"),
            ("getStats", "get", "/api/url-shortener/stats", [], "Get stats"),
            ("getLink", "get", "/api/url-shortener/links/{id}", ["linkId"], "Get link"),
            ("deleteLink", "delete", "/api/url-shortener/links/{id}", ["linkId"], "Delete link"),
        ],
    },
    "proxmox_backup": {
        "class": "ProxmoxBackupResource",
        "methods": [
            ("getConnectionInfo", "get", "/api/service/{id}/pbs", ["serviceId"], "Get connection info"),
            ("getCredentials", "get", "/api/service/{id}/pbs/credentials", ["serviceId"], "Get credentials"),
            ("getUsage", "get", "/api/service/{id}/pbs/usage", ["serviceId"], "Get usage"),
            ("getMetrics", "get", "/api/service/{id}/pbs/metrics", ["serviceId"], "Get metrics"),
            ("listSnapshots", "get", "/api/service/{id}/pbs/snapshots", ["serviceId"], "List snapshots"),
            ("listGroups", "get", "/api/service/{id}/pbs/groups", ["serviceId"], "List groups"),
            ("changePassword", "post", "/api/service/{id}/pbs/password", ["serviceId", "data"], "Change password"),
            ("rotateToken", "post", "/api/service/{id}/pbs/token", ["serviceId"], "Rotate token"),
            ("revokeToken", "delete", "/api/service/{id}/pbs/token", ["serviceId"], "Revoke token"),
        ],
    },
    "ceph_s3": {
        "class": "CephS3Resource",
        "methods": [
            ("getConnectionInfo", "get", "/api/service/{id}/s3", ["serviceId"], "Get connection info"),
            ("getCredentials", "get", "/api/service/{id}/s3/credentials", ["serviceId"], "Get credentials"),
            ("getUsage", "get", "/api/service/{id}/s3/usage", ["serviceId"], "Get usage"),
            ("getMetrics", "get", "/api/service/{id}/s3/metrics", ["serviceId"], "Get metrics"),
            ("listBuckets", "get", "/api/service/{id}/s3/buckets", ["serviceId"], "List buckets"),
            ("createBucket", "post", "/api/service/{id}/s3/buckets", ["serviceId", "data"], "Create bucket"),
            ("deleteBucket", "delete", "/api/service/{id}/s3/buckets/{bucket}", ["serviceId", "bucket"], "Delete bucket"),
            ("listSubusers", "get", "/api/service/{id}/s3/subusers", ["serviceId"], "List sub-users"),
            ("createSubuser", "post", "/api/service/{id}/s3/subusers", ["serviceId", "data"], "Create sub-user"),
            ("deleteSubuser", "delete", "/api/service/{id}/s3/subusers/{subuser}", ["serviceId", "subuser"], "Delete sub-user"),
            ("rotateSecretKey", "post", "/api/service/{id}/s3/key", ["serviceId"], "Rotate secret key"),
        ],
    },
    "pmg": {
        "class": "PmgResource",
        "methods": [
            ("getConfig", "get", "/api/service/{id}/htcpmg/config", ["serviceId"], "Get config"),
            ("addDomain", "post", "/api/service/{id}/htcpmg/domains", ["serviceId", "data"], "Add domain"),
            ("setTransport", "post", "/api/service/{id}/htcpmg/transport", ["serviceId", "data"], "Set transport"),
            ("getStats", "get", "/api/service/{id}/htcpmg/stats", ["serviceId"], "Get stats"),
        ],
    },
    "proxmox": {
        "class": "ProxmoxResource",
        "methods": [
            ("getStatus", "get", "/api/service/{id}/htcpve/status", ["serviceId"], "Get status"),
            ("powerAction", "post", "/api/service/{id}/htcpve/power", ["serviceId", "data"], "Power action"),
            ("listVms", "get", "/api/service/{id}/htcpve/vms", ["serviceId"], "List VMs"),
            ("listIps", "get", "/api/service/{id}/htcpve/ips", ["serviceId"], "List IPs"),
            ("setRdns", "post", "/api/service/{id}/htcpve/rdns", ["serviceId", "data"], "Set rDNS"),
            ("listBackups", "get", "/api/service/{id}/htcpve/backups", ["serviceId"], "List backups"),
            ("createBackup", "post", "/api/service/{id}/htcpve/backups", ["serviceId", "data"], "Create backup"),
            ("listSnapshots", "get", "/api/service/{id}/htcpve/snapshots", ["serviceId"], "List snapshots"),
            ("createSnapshot", "post", "/api/service/{id}/htcpve/snapshots", ["serviceId", "data"], "Create snapshot"),
            ("getBandwidthUsage", "get", "/api/service/{id}/htcpve/usage", ["serviceId"], "Get bandwidth usage"),
        ],
    },
    "ipam": {
        "class": "IpamResource",
        "methods": [
            ("listIps", "get", "/api/service/{id}/htcipam/ips", ["serviceId"], "List IPs"),
            ("listSubnets", "get", "/api/service/{id}/htcipam/subnets", ["serviceId"], "List subnets"),
            ("listRdns", "get", "/api/service/{id}/htcipam/rdns", ["serviceId"], "List rDNS"),
            ("setRdns", "post", "/api/service/{id}/htcipam/rdns", ["serviceId", "data"], "Set rDNS"),
        ],
    },
    "partner": {
        "class": "PartnerResource",
        "methods": [
            ("getPartnerInfo", "get", "/api/partner", [], "Get partner info"),
            ("apply", "post", "/api/partner/apply", ["data"], "Apply"),
            ("listTiers", "get", "/api/partner/tiers", [], "List tiers"),
            ("getPricing", "get", "/api/partner/pricing", [], "Get pricing"),
            ("listCustomers", "get", "/api/partner/customers", [], "List customers"),
            ("getEarnings", "get", "/api/partner/earnings", [], "Get earnings"),
            ("getWallet", "get", "/api/partner/wallet", [], "Get wallet"),
            ("listPayouts", "get", "/api/partner/payouts", [], "List payouts"),
            ("requestPayout", "post", "/api/partner/payouts", ["data"], "Request payout"),
            ("listLeads", "get", "/api/partner/leads", [], "List leads"),
            ("createLead", "post", "/api/partner/leads", ["data"], "Create lead"),
            ("getReferral", "get", "/api/partner/referral", [], "Get referral"),
            ("getRates", "get", "/api/partner/rates", [], "Get rates"),
        ],
    },
}


def generate_resource_file(filename, config):
    """Generate a single Node.js resource file"""
    cls = config["class"]
    methods = config["methods"]
    
    lines = [
        '"use strict";',
        "",
        'const { BaseResource } = require("./base");',
        "",
        f"class {cls} extends BaseResource {{",
    ]
    
    for method_name, http_method, path, params, desc in methods:
        # Build parameter list
        param_list = []
        for p in params:
            if p == "data":
                param_list.append("data")
            elif p == "params":
                param_list.append("params = {}")
            else:
                # camelCase parameter name
                param_list.append(p)
        
        param_str = ", ".join(param_list)
        
        # Build path with template literals
        js_path = path
        for p in params:
            if p not in ("data", "params"):
                js_path = js_path.replace("{" + p + "}", "${" + p + "}")
        
        if "${" in js_path:
            js_path = f"`{js_path}`"
        else:
            js_path = f'"${js_path}"'
        
        lines.append(f"  async {method_name}({param_str}) {{")
        
        if http_method == "get":
            if "params" in param_list:
                lines.append(f"    return this._http.get({js_path}, params);")
            else:
                lines.append(f"    return this._http.get({js_path});")
        elif http_method == "post":
            if "data" in param_list:
                lines.append(f"    return this._http.post({js_path}, data);")
            else:
                lines.append(f"    return this._http.post({js_path});")
        elif http_method == "put":
            if "data" in param_list:
                lines.append(f"    return this._http.put({js_path}, data);")
            else:
                lines.append(f"    return this._http.put({js_path});")
        elif http_method == "delete":
            lines.append(f"    return this._http.delete({js_path});")
        
        lines.append("  }")
        lines.append("")
    
    lines.append("}")
    lines.append("")
    lines.append(f"module.exports = {{ {cls} }};")
    lines.append("")
    
    return "\n".join(lines)


# Generate all resource files
for filename, config in RESOURCES.items():
    filepath = os.path.join(SDK_DIR, f"{filename}.js")
    content = generate_resource_file(filename, config)
    with open(filepath, "w") as f:
        f.write(content)
    print(f"Generated {filename}.js ({len(config['methods'])} methods)")

print(f"\nTotal: {len(RESOURCES)} resource files generated")
