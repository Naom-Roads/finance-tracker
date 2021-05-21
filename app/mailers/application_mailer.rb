class ApplicationMailer < ActionMailer::Base 

  ActionMailer::Base.delivery_method = :smtp

  ActionMailer::Base.sendmail_settings = { :address => "smtp.gmail.com", :port => "25", :domain => "gmail.com",
  :user_name => "nrrodrig@gmail.com", :password => "138mArA88!!", :authentication => "plain", :enable_starttls_auto => true }

  default from: 'nrrodrig@gmail.com'
  layout 'mailer'
  
end


