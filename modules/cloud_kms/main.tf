resource "google_kms_key_ring" "key_ring" {
  name     = var.kms_key_ring_name
  location = "global"
}

resource "google_kms_crypto_key" "crypto_key" {
  name     = var.crypto_key_name
  key_ring = google_kms_key_ring.key_ring.id

  purpose = var.crypto_key_purpose
  rotation_period = var.crypto_key_rotation_period

  lifecycle {
    prevent_destroy = true
  }
}
