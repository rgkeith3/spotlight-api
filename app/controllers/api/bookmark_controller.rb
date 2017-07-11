class Api::BookmarkController < ApplicationController
  def create
    post_id = params[:post_id]
    p "bookmarked #{post_id}"
  end

  def destroy
    post_id = params[:post_id]
    p "unbookmarked #{post_id}"
  end
end
