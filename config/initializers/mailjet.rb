# kindly generated by appropriated Rails generator
Mailjet.configure do |config|
  config.api_key = '0871efd14081115c254e046eb0465509'
  config.secret_key = '7d25fdeb87e5b32ea8e176486ed66fcd'
  config.default_from = 'nrrodrig@gmail.com'
  # Mailjet API v3.1 is at the moment limited to Send API.
  # We’ve not set the version to it directly since there is no other endpoint in that version.
  # We recommend you create a dedicated instance of the wrapper set with it to send your emails.
  # If you're only using the gem to send emails, then you can safely set it to this version.
  # Otherwise, you can remove the dedicated line into config/initializers/mailjet.rb.
  config.api_version = 'v3.1'
end