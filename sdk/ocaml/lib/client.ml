(** HiTechCloud Client *)

type t = {
  http : HttpClient.client;
  affiliate : HttpClient.client;
  affiliates_advanced : HttpClient.client;
  ai_factory : HttpClient.client;
  auth : HttpClient.client;
  bare_metal : HttpClient.client;
  billing : HttpClient.client;
  cart : HttpClient.client;
  ceph_s3 : HttpClient.client;
  cloud_gpu : HttpClient.client;
  cloud_instance : HttpClient.client;
  cloud_service : HttpClient.client;
  cloud_vm : HttpClient.client;
  collocation : HttpClient.client;
  contacts : HttpClient.client;
  dns : HttpClient.client;
  dns_manage : HttpClient.client;
  domains : HttpClient.client;
  email_mfa_v2 : HttpClient.client;
  hosting : HttpClient.client;
  ipam : HttpClient.client;
  location_v2 : HttpClient.client;
  network_services : HttpClient.client;
  notifications : HttpClient.client;
  partner : HttpClient.client;
  passkey_v2 : HttpClient.client;
  pmg : HttpClient.client;
  proxmox : HttpClient.client;
  proxmox_backup : HttpClient.client;
  service_status : HttpClient.client;
  services : HttpClient.client;
  ssl : HttpClient.client;
  support : HttpClient.client;
  url_shortener : HttpClient.client;
  users : HttpClient.client;
  vcloudstack : HttpClient.client;
  virtualizor : HttpClient.client;
  vneidekyc : HttpClient.client;
  will_expired : HttpClient.client;
}

let create ?(base_url = "https://api.hitechcloud.vn") ?token ?(timeout = 30) ?(max_retries = 3) () =
  let http = HttpClient.create ~base_url ?token ~timeout ~max_retries () in
  { http;
    affiliate = http;
    affiliates_advanced = http;
    ai_factory = http;
    auth = http;
    bare_metal = http;
    billing = http;
    cart = http;
    ceph_s3 = http;
    cloud_gpu = http;
    cloud_instance = http;
    cloud_service = http;
    cloud_vm = http;
    collocation = http;
    contacts = http;
    dns = http;
    dns_manage = http;
    domains = http;
    email_mfa_v2 = http;
    hosting = http;
    ipam = http;
    location_v2 = http;
    network_services = http;
    notifications = http;
    partner = http;
    passkey_v2 = http;
    pmg = http;
    proxmox = http;
    proxmox_backup = http;
    service_status = http;
    services = http;
    ssl = http;
    support = http;
    url_shortener = http;
    users = http;
    vcloudstack = http;
    virtualizor = http;
    vneidekyc = http;
    will_expired = http;
  }
