class JobMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.job_mailer.job_application.subject
  #
  def job_application(job)
    @job = job

    attachments['Resume.pdf'] = File.read("#{@job.resume.path}")

    mail(:to => "calvinieong1118@gmail.com", :subject => "New Job Application") do |formatt| 
        formatt.text {render :text => "Full Name: #{@job.first_name} #{@job.last_name}\nEmail: #{@job.email}\nMessages: #{@job.messages}"}
    end.deliver

  end
end
