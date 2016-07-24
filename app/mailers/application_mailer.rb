class ApplicationMailer < ActionMailer::Base
  default from: "info@webdev.camp" , bcc: "info@webdev.camp"
  layout 'mailer'
end
