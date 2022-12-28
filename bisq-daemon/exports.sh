export APP_BISQ_DAEMON_IP="10.21.22.68"
export APP_BISQ_DAEMON_NODE_IP="10.21.21.69"

export APP_BISQ_DAEMON_PORT="6967"
export APP_BISQ_DAEMON_GRPC_PORT="6968"
export APP_BISQ_DAEMON_NODE_PORT="9999"
export APP_BISQ_DAEMON_API_PASS="becareful"

rest_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-rest/hostname"
grpc_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-grpc/hostname"
export APP_BISQ_DAEMON_NODE_HIDDEN_SERVICE="$(cat "${rest_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")"
export APP_BISQ_DAEMON_GRPC_HIDDEN_SERVICE="$(cat "${grpc_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")"