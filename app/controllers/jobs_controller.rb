class JobsController < ApplicationController
  
  def index
    @jobs = Job.all
  	@background_image = "/assets/store.jpg"
  end

  def new
    @job = Job.new
  end

  def create
  	param = params["job"]
  	@job = Job.new(first_name: param["first_name"], last_name: param["last_name"], email: param["email"], resume: param["resume"], messages: param["messages"])
   	@job.save
   		if @job.save
   			job = Job.last
   			mail = JobMailer.job_application(job)
   			mail.deliver_now
   			redirect_to(jobs_path, :notice => 'Form was successfully sent.')
    	end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path, notice:  "The job #{@job.name} has been deleted."
  end

end
