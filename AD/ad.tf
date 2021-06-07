resource "azuread_user" "john" {
  user_principal_name = "jdoe@tmirlanyahoo.onmicrosoft.com"
  display_name        = "J. Doe"
  mail_nickname       = "jdoe"
  password            = "SecretP@sswd99!"
  city                = "Chicago"
  mobile_phone        = "3123123312"
}