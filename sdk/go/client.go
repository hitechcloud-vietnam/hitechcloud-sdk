package hitechcloud

import "time"

const (
	ProductionURL = "https://api.hitechcloud.vn"
	OTEURL        = "https://ote.hitechcloud.vn"
	Version       = "2.0.0"
)

// HiTechCloud is the main client for the UserAPI
type HiTechCloud struct {
	httpClient	*HTTPClient
	Auth		*AuthResource
	Users		*UsersResource
	Services		*ServicesResource
	Domains		*DomainsResource
	DnsManage		*DnsManageResource
	Dns		*DnsResource
	Ssl		*SslResource
	Billing		*BillingResource
	Support		*SupportResource
	Contacts		*ContactsResource
	Cart		*CartResource
	Notifications		*NotificationsResource
	Affiliate		*AffiliateResource
	CloudGpu		*CloudGpuResource
	Virtualizor		*VirtualizorResource
	CloudService		*CloudServiceResource
	NetworkServices		*NetworkServicesResource
	ServiceStatus		*ServiceStatusResource
	BareMetal		*BareMetalResource
	Collocation		*CollocationResource
	VCloudStack		*VCloudStackResource
	Hosting		*HostingResource
	LocationV2		*LocationV2Resource
	CloudInstance		*CloudInstanceResource
	CloudVm		*CloudVmResource
	AffiliatesAdvanced		*AffiliatesAdvancedResource
	AiFactory		*AiFactoryResource
	PasskeyV2		*PasskeyV2Resource
	EmailMfaV2		*EmailMfaV2Resource
	VNeIdeKyc		*VNeIdeKycResource
	WillExpired		*WillExpiredResource
	UrlShortener		*UrlShortenerResource
	ProxmoxBackup		*ProxmoxBackupResource
	CephS3		*CephS3Resource
	Pmg		*PmgResource
	Proxmox		*ProxmoxResource
	Ipam		*IpamResource
	Partner		*PartnerResource
}

// ClientOption configures the client
type ClientOption func(*clientConfig)

type clientConfig struct {
	baseURL		string
	token		string
	email		string
	password	string
	timeout		time.Duration
	maxRetries	int
}

// WithToken sets the auth token
func WithToken(token string) ClientOption {
	return func(c *clientConfig) {
		c.token = token
	}
}

// WithEmail sets email/password for auto-login
func WithEmail(email, password string) ClientOption {
	return func(c *clientConfig) {
		c.email = email
		c.password = password
	}
}

// WithBaseURL sets a custom base URL
func WithBaseURL(url string) ClientOption {
	return func(c *clientConfig) {
		c.baseURL = url
	}
}

// WithTimeout sets the request timeout
func WithTimeout(timeout time.Duration) ClientOption {
	return func(c *clientConfig) {
		c.timeout = timeout
	}
}

// WithMaxRetries sets the max retry attempts
func WithMaxRetries(retries int) ClientOption {
	return func(c *clientConfig) {
		c.maxRetries = retries
	}
}

// WithSandbox uses the sandbox (OTE) environment
func WithSandbox() ClientOption {
	return func(c *clientConfig) {
		c.baseURL = OTEURL
	}
}

// NewClient creates a new HiTechCloud client
func NewClient(opts ...ClientOption) (*HiTechCloud, error) {
	cfg := &clientConfig{
		baseURL:	ProductionURL,
		timeout:	30 * time.Second,
		maxRetries:	3,
	}
	for _, opt := range opts {
		opt(cfg)
	}

	hc := &HiTechCloud{}
	hc.httpClient = newHTTPClient(cfg.baseURL, cfg.timeout, cfg.maxRetries)

	if cfg.token != "" {
		hc.httpClient.SetToken(cfg.token)
	}

	hc.Auth = &AuthResource{client: hc.httpClient}
	hc.Users = &UsersResource{client: hc.httpClient}
	hc.Services = &ServicesResource{client: hc.httpClient}
	hc.Domains = &DomainsResource{client: hc.httpClient}
	hc.DnsManage = &DnsManageResource{client: hc.httpClient}
	hc.Dns = &DnsResource{client: hc.httpClient}
	hc.Ssl = &SslResource{client: hc.httpClient}
	hc.Billing = &BillingResource{client: hc.httpClient}
	hc.Support = &SupportResource{client: hc.httpClient}
	hc.Contacts = &ContactsResource{client: hc.httpClient}
	hc.Cart = &CartResource{client: hc.httpClient}
	hc.Notifications = &NotificationsResource{client: hc.httpClient}
	hc.Affiliate = &AffiliateResource{client: hc.httpClient}
	hc.CloudGpu = &CloudGpuResource{client: hc.httpClient}
	hc.Virtualizor = &VirtualizorResource{client: hc.httpClient}
	hc.CloudService = &CloudServiceResource{client: hc.httpClient}
	hc.NetworkServices = &NetworkServicesResource{client: hc.httpClient}
	hc.ServiceStatus = &ServiceStatusResource{client: hc.httpClient}
	hc.BareMetal = &BareMetalResource{client: hc.httpClient}
	hc.Collocation = &CollocationResource{client: hc.httpClient}
	hc.VCloudStack = &VCloudStackResource{client: hc.httpClient}
	hc.Hosting = &HostingResource{client: hc.httpClient}
	hc.LocationV2 = &LocationV2Resource{client: hc.httpClient}
	hc.CloudInstance = &CloudInstanceResource{client: hc.httpClient}
	hc.CloudVm = &CloudVmResource{client: hc.httpClient}
	hc.AffiliatesAdvanced = &AffiliatesAdvancedResource{client: hc.httpClient}
	hc.AiFactory = &AiFactoryResource{client: hc.httpClient}
	hc.PasskeyV2 = &PasskeyV2Resource{client: hc.httpClient}
	hc.EmailMfaV2 = &EmailMfaV2Resource{client: hc.httpClient}
	hc.VNeIdeKyc = &VNeIdeKycResource{client: hc.httpClient}
	hc.WillExpired = &WillExpiredResource{client: hc.httpClient}
	hc.UrlShortener = &UrlShortenerResource{client: hc.httpClient}
	hc.ProxmoxBackup = &ProxmoxBackupResource{client: hc.httpClient}
	hc.CephS3 = &CephS3Resource{client: hc.httpClient}
	hc.Pmg = &PmgResource{client: hc.httpClient}
	hc.Proxmox = &ProxmoxResource{client: hc.httpClient}
	hc.Ipam = &IpamResource{client: hc.httpClient}
	hc.Partner = &PartnerResource{client: hc.httpClient}

	// Auto-login if email/password provided
	if cfg.email != "" && cfg.password != "" {
		_, err := hc.Login(cfg.email, cfg.password)
		if err != nil {
			return nil, err
		}
	}

	return hc, nil
}

// Login authenticates and stores the token
func (c *HiTechCloud) Login(email, password string) (map[string]interface{}, error) {
	result, err := c.Auth.Login(email, password)
	if err != nil {
		return nil, err
	}
	if token, ok := result["token"].(string); ok {
		c.httpClient.SetToken(token)
	}
	return result, nil
}

// Logout clears the auth token
func (c *HiTechCloud) Logout() (map[string]interface{}, error) {
	result, err := c.Auth.Logout()
	if err != nil {
		return nil, err
	}
	c.httpClient.ClearToken()
	return result, nil
}
