output "stream_keys_id" {
  description = "Map of id values across all stream_keys, keyed the same as var.stream_keys except keys with no id are omitted"
  value       = { for k, v in cloudflare_stream_key.stream_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_keys_account_id" {
  description = "Map of account_id values across all stream_keys, keyed the same as var.stream_keys except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_stream_key.stream_keys : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "stream_keys_created" {
  description = "Map of created values across all stream_keys, keyed the same as var.stream_keys except keys with no created are omitted"
  value       = { for k, v in cloudflare_stream_key.stream_keys : k => v.created if v.created != null && length(v.created) > 0 }
}
output "stream_keys_jwk" {
  description = "Map of jwk values across all stream_keys, keyed the same as var.stream_keys except keys with no jwk are omitted"
  value       = { for k, v in cloudflare_stream_key.stream_keys : k => v.jwk if v.jwk != null && length(v.jwk) > 0 }
  sensitive   = true
}
output "stream_keys_key_id" {
  description = "Map of key_id values across all stream_keys, keyed the same as var.stream_keys except keys with no key_id are omitted"
  value       = { for k, v in cloudflare_stream_key.stream_keys : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "stream_keys_pem" {
  description = "Map of pem values across all stream_keys, keyed the same as var.stream_keys except keys with no pem are omitted"
  value       = { for k, v in cloudflare_stream_key.stream_keys : k => v.pem if v.pem != null && length(v.pem) > 0 }
  sensitive   = true
}

