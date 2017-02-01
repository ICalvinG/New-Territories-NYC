class JobsController < ApplicationController
  
  def index
  	@background_image = "/assets/store.jpg"
  end

  def create
  	param = params["job"]
  	@job = Job.new(first_name: param["first_name"], last_name: param["last_name"], email: param["email"])
   	@job.save
   		if @job.save
   			job = Job.last
   			mail = JobMailer.job_application(job)
   			mail.deliver_now
    	else
      		@errors = "Something is wrong, please try again."
      		render 'index'
    	end
  end
  
end
