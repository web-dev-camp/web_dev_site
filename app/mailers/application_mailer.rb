class ApplicationMailer < ActionMailer::Base
  default from: "admission@webdev.camp" , bcc: "admission@webdev.camp"
  layout 'mailer'
end
