Clearance.configure do |config|
  config.routes = false
  config.redirect_url = "/"
  config.mailer_sender = "reply@example.com"
  config.rotate_csrf_on_sign_in = true
end
