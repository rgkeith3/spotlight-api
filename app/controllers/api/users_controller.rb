class Api::UsersController < ApplicationController
  def create
    User.create(user_params)
  end

  def update
    id = params[:id]
    p "edited user #{id}"
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
