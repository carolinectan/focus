class ImagesController < ApplicationController
  def index
    @images = ImageFacade.new(params[:subject])
  end
end
