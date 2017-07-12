class Api::FollowController < ApplicationController
  def create
    user_id = params[:user_id]
    current_user.followed_users.push(user_id)
    render json: current_user
    current_user.save
  end

  def destroy
    user_id = params[:user_id]
    current_user.followed_users.delete(user_id)
    render json: current_user
    current_user.save
  end
end
