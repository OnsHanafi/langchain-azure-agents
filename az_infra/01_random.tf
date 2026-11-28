resource "random_string" "suffix" {
  length = 5
  numeric = true
  lower = true
  upper = false
  special = false
}