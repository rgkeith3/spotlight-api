class Api::PostsController < ApplicationController
  def index
    p 'index of all posts'
  end

  def create
    p 'created a post'
  end

  def update
    id = params[:id]
    p "edited post #{id}"
  end

  def show
    id = params[:id]
    p "showed post #{id}"
  end

  def destroy
    id = params[:id]
    p "destroyed post #{id}"
  end
end
