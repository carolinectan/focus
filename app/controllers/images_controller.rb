class ImagesController < ApplicationController
  def index
    @images = ImageFacade.find_images(params[:subject])
  end

  def by_title
    @images = ImageFacade.find_images(params[:title])
  end

  def by_photographer
    @images = ImageFacade.find_images(params[:photographer])
  end
end
