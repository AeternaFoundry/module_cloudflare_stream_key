variable "stream_keys" {
  description = <<EOT
Map of stream_keys, attributes below
Required:
    - account_id
EOT

  type = map(object({
    account_id = string
  }))
}

