ActionMailer::Base.smtp_settings = {
  :address              => "smtp.boltlab.com",
  :port                 => "587",
  :domain               => "inforum.boltlab.com",
  :user_name            => "inforum",
  :password             => "bolt4life",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

# ActionMailer::Base.default_url_options[:host] = "localhost:3000"