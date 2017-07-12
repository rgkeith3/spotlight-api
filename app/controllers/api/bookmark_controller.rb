class Api::BookmarkController < ApplicationController
  def create
    post_id = params[:post_id]
    current_user.bookmarked_posts.push(post_id)
    render json: current_user
    current_user.save
  end

  def destroy
    post_id = params[:post_id]
    current_user.bookmarked_posts.delete(post_id)
    render json: current_user
    current_user.save
  end
end
