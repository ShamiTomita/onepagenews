class Api::V1::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create
  end 

  def index
    users = User.all
    render json: users
  end


end
