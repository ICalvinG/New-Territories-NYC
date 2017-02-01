class JobsController < ApplicationController
  def index
  	@background_image = "/assets/store.jpg"
  end

  def create
  	binding.pry
  end
end
