class ApplicationMailer < ActionMailer::Base 

  ActionMailer::Base.delivery_method = :smtp

  ActionMailer::Base.sendmail_settings = { :address => "smtp.gmail.com", :port => "25", :domain => "gmail.com",
  :user_name => "nrrodrig@gmail.com", :password => "0QK2rMPgp5n7", :authentication => "plain", :enable_starttls_auto => true }

  default from: 'nrrodrig@gmail.com'
  layout 'mailer'
  
end


