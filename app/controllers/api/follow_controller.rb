class Api::FollowController < ApplicationController
  def create
    user_id = params[:user_id]
    p "following #{user_id}"
  end

  def destroy
    user_id = params[:user_id]
    p "unfollowing #{user_id}"
  end
end
