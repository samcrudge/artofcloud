variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "profile" {
  type      = string
  sensitive = true
  default   = "personal"
}
