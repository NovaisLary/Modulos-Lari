variable "location" {
  type        = string
  default     = "estus"
  description = "Região dos recursos"
}

variable "environment" {
  type        = string
  default     = "produçaõ"
  description = "ambiente em que pertence os recursos criados no Azure"
}

variable "subnet_id" {
  description = "ID da sub-rede"
}
