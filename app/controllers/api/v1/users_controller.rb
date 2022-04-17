class Api::V1::UsersController < ApplicationController
  def new
    @user = User.new
    render json:@user
  end

  def create
    @user = User.create
    render json:@user
  end

  def index
    users = User.all
    render json: users
  end


end
