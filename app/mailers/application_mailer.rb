class ApplicationMailer < ActionMailer::Base
  default from: "info@webdev.camp" , bcc: "torsten@webdev.camp"
  layout 'mailer'
end
