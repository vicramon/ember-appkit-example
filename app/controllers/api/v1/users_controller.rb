class Api::V1::UsersController < ApplicationController
  respond_to :json

  def index
    respond_with User.all
  end

  def show
    respond_with user
  end

  def create
    respond_with :api, :v1, User.create(user_params)
  end

  def update
    respond_with user.update_attributes(user_params)
  end

  def destroy
    respond_with user.destroy
  end

  private

  def user
    User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
