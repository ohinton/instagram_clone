class UsersController < ApplicationController
  before_filter :authenticate_user!, except [ :index, :show ]

  def index
    @images = current_user.images
    render :index
  end

  def show
    @image = current_user.image.find(params[:id])
    render :show
  end

private
  def image_params
    params.require(:image).permit(:caption, :photo)
  end

end
