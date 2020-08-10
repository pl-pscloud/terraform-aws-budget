resource "aws_budgets_budget" "pscloud-budget" {
  name              = "${var.pscloud_company}_budget_${var.pscloud_env} - ${lower(${var.pscloud_period})} - ${var.pscloud_limit_amount} ${var.pscloud_limit_unit}"
  budget_type       = var.pscloud_budget_type
  limit_amount      = var.pscloud_limit_amount
  limit_unit        = var.pscloud_limit_unit
  time_period_start = var.pscloud_time_period_start
  time_period_end   = var.pscloud_time_period_end
  time_unit         = var.pscloud_period

  
  notification {
    comparison_operator        = var.pscloud_comparison_operator
    threshold                  = var.pscloud_threshold
    threshold_type             = var.pscloud_threshold_type
    notification_type          = var.pscloud_notification_type
    subscriber_email_addresses = var.pscloud_subscriber_email_addresses
  }
}