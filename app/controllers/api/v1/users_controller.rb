
class Api::V1::UsersController < ApplicationController
  def index
    user = User.all
    render json:users
  end
  def create
    user = User.new(user_params)
    if !user.save
      render json: {:errors => user.errors.full_messages}
    else
      render json: user
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :zipcode)
  end


end
