# Preview all emails at http://localhost:3000/rails/mailers/job_mailer
class JobMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/job_mailer/job_application
  def job_application
  	job = Job.last
    JobMailer.job_application(job)
  end

end
