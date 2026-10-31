#!/usr/bin/env bash
# Notifications: manage notification preferences
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/notifications - List all notifications
list() {
    hc_get "/api/notifications" "$@"
}

# GET /api/notifications/new - Return only new portal notifications
list-new() {
    hc_get "/api/notifications/new" "$@"
}

# PUT /api/notifications/{id}/ack - Mark notification as read
acknowledge() {
    hc_put "/api/notifications/{id}/ack" "$@"
}

