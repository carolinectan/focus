class ImagesController < ApplicationController
  def index
    @images = ImageFacade.find_images(params[:subject])
  end
end
