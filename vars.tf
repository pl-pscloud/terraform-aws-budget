variable "pscloud_env" {}
variable "pscloud_company" {}

variable "pscloud_period" { default = "MONTHLY" }
variable "pscloud_limit_unit" { default = "USD" }
variable "pscloud_budget_type" { default = "COST"}
variable "pscloud_limit_amount"  {}
variable "pscloud_time_period_end" {} 
variable "pscloud_time_period_start" {}

variable "pscloud_comparison_operator"  { default = "GREATER_THAN" }
variable "pscloud_threshold" { default = 100 }
variable "pscloud_threshold_type" {default = "PERCENTAGE" }
variable "pscloud_notification_type" { default = "FORECASTED" }
variable "pscloud_subscriber_email_addresses" { }
