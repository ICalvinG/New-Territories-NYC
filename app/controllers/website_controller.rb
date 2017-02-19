class WebsiteController < ApplicationController
  def index
  	@background_image = "/assets/unicorn.jpg"
  	@parallax_image = "/assets/affogato.jpg"
  end
end
