ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:        ENV["SMTP_ADDRESS"],
  port:           '587',
  authentication: 'plain',
  user_name:      ENV["EMAIL_USERNAME"],
  password:       ENV["EMAIL_PASSWORD"],
  domain:         ENV["SMTP_DOMAIN"],
  enable_starttls_auto: true
}
