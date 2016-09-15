class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [ :index, :show ]

  def show
    @user = User.find(params[:id])
    @images = @user.images
    render :show
  end

private
  def image_params
    params.require(:image).permit(:caption, :photo)
  end

end
