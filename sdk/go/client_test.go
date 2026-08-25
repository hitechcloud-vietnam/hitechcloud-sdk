package hitechcloud

import (
	"testing"
)

func TestNewClient(t *testing.T) {
	client, err := NewClient(WithToken("test_token"))
	if err != nil {
		t.Fatalf("Unexpected error: %v", err)
	}
	if client == nil {
		t.Fatal("Expected client to be non-nil")
	}
}

func TestNewClientWithCustomURL(t *testing.T) {
	client, err := NewClient(
		WithToken("test_token"),
		WithBaseURL("https://custom.api.com"),
	)
	if err != nil {
		t.Fatalf("Unexpected error: %v", err)
	}
	if client == nil {
		t.Fatal("Expected client to be non-nil")
	}
}

func TestClientResources(t *testing.T) {
	client, err := NewClient(WithToken("test_token"))
	if err != nil {
		t.Fatalf("Unexpected error: %v", err)
	}
	resources := map[string]bool{
		"Auth":      client.Auth != nil,
		"Services":  client.Services != nil,
		"Domains":   client.Domains != nil,
		"Dns":       client.Dns != nil,
		"Ssl":       client.Ssl != nil,
		"Billing":   client.Billing != nil,
		"Support":   client.Support != nil,
	}
	for name, exists := range resources {
		if !exists {
			t.Errorf("Expected %s resource to be initialized", name)
		}
	}
}

func TestClientWithSandbox(t *testing.T) {
	client, err := NewClient(WithToken("test_token"), WithSandbox())
	if err != nil {
		t.Fatalf("Unexpected error: %v", err)
	}
	if client == nil {
		t.Fatal("Expected client to be non-nil")
	}
}
