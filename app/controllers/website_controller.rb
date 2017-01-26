class WebsiteController < ApplicationController
  def index
  	@background_image = "/assets/ube.jpg"
  	@parallax_image = "/assets/unicorn.jpg"
  	@thaigo_image = "/assets/affogato.jpg"
  end
end
