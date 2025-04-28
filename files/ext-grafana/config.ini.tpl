[server]
root_url = {{ include "resengit.tpl-value-in-virtual-context" (list "icos.externalUrl" . "" "grafana") }}

[log.console]
;level = debug

[auth.generic_oauth]
enabled = true
name = ICOS IAM
allow_sign_up = true
client_id = {{ include "resengit.tpl-value-in-virtual-context" (list "icos.iam.clientId" . "" "grafana") }}
client_secret = {{ include "resengit.tpl-value-in-virtual-context" (list "icos.iam.clientSecret" . "" "grafana") }}
scopes = openid email profile offline_access roles
email_attribute_path = email
login_attribute_path = username
name_attribute_path = full_name
auth_url = {{ include "resengit.tpl-value-in-virtual-context" (list "icos.iam.authUrl" . "" "grafana") }}
token_url = {{ include "resengit.tpl-value-in-virtual-context" (list "icos.iam.tokenUrl" . "" "grafana") }}
api_url = {{ include "resengit.tpl-value-in-virtual-context" (list "icos.iam.userInfoUrl" . "" "grafana") }}

;
; client id must be in double quotes if it contains "-" or "." characters, while strings should be single quoted
;
role_attribute_path = contains(resource_access."{{ include "resengit.tpl-value-in-virtual-context" (list "icos.iam.clientId" . "" "grafana") }}".roles[*], 'admin') && 'Admin' || contains(resource_access."{{ include "resengit.tpl-value-in-virtual-context" (list "icos.iam.clientId" . "" "grafana") }}".roles[*], 'editor') && 'Editor' || 'Viewer'
