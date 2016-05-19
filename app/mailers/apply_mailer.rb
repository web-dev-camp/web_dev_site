class ApplyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.apply.submit.subject
  #
  def submit( application )
    @application = application
    mail(to: @application.user.email, subject: "Your application has been submitted")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.apply.cancel.subject
  #
  def cancel( application  , reason)
    @application = application
    @reason = reason
    mail(to: @application.user.email, subject: "Your application has been cancelled")
  end
end
