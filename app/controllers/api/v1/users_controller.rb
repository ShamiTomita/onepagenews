
class Api::V1::UsersController < ApplicationController
  def new
    user = User.new
    render json: UserSerializer.new(user)
  end

  def index
    users = User.all

    render json: UserSerializer.new(users)

  end

  def show
    user = User.find_by(id: params[:id])
    render json: UserSerializer.new(user)

  end

  def create
    @user = User.create(user_params)
    render json: UserSerializer.new(@user)
  end

  private
  def user_params
    params.permit(:name, :zipcode)
  end
