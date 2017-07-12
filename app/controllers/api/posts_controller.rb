class Api::PostsController < ApplicationController
  def index
    if current_user
      @followed_users = current_user.followed_users
      @posts = []
      @followed_users.each do |user|
        @posts.concat(user.posts)
      end
    else
      @posts = Post.find()
    end
    render json: @posts
  end

  def create
    @post = Post.create!(post_params)
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
  end

  private

  def post_params
    params.require(:post).permit(:title, :draft, :author, :content)
  end
end
