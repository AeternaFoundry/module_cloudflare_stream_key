resource "cloudflare_stream_key" "stream_keys" {
  for_each = var.stream_keys

  account_id = each.value.account_id
}

