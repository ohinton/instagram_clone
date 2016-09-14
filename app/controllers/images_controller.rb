class ImagesController < ApplicationController
  before_filter :authenticate_user!, except: [ :index, :show ]

  def index
    @images = Image.all
    render :index
  end

  def show
    @image = Image.find(params[:id])
    render :show
  end

  def new
    @image = Image.new
    render :new
  end

  def create
    @image = Image.new(image_params)
    @image.user = current_user
    if @image.save
      redirect_to images_path
    else
      render :new
    end
  end

  def edit
    @image = Image.find(params[:id])
    render :edit
  end

  def update
    @image = Image.find(params[:id])
    if @image.update(image_params)
      redirect_to images_path
    else
      render :edit
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
  end

private
  def image_params
    params.require(:image).permit(:caption, :url)
  end

end
