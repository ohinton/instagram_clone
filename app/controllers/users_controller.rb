class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [ :index, :show ]


  def index
    @user = current_user
    @images = Image.all
  end
