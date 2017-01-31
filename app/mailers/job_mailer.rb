class JobMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.job_mailer.job_application.subject
  #
  def job_application
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
