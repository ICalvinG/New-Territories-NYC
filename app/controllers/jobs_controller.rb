class JobsController < ApplicationController
  
  def index
  	@background_image = "/assets/store.jpg"
  end

  def create
  	param = params["job"]
  	@job = Job.new(first_name: param["first_name"], last_name: param["last_name"], email: param["email"], resume: param["resume"])
   	@job.save
   		if @job.save
   			job = Job.last
   			mail = JobMailer.job_application(job)
   			mail.deliver_now
   			redirect_to(jobs_path, :notice => 'Form was successfully sent.')
    	end
  end

end
