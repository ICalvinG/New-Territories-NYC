class MenuController < ApplicationController
  def index
  	@background_image = "/assets/thaigo.jpg"
  	@uni_image = "/assets/uni.jpg"
  	@thaigo_image = "/assets/affogato.jpg"
  	@cny_image = "/assets/cny.jpg"
  	@unicorn_image = "/assets/unicorn.jpg"
  end
end
