class PostsController < ApplicationController
  before_action :authenticate_user!
  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else
      "Try Again Later"
    end
  end

  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def post_params
    params.require(:post).permit(:poster_image, :url, :description, :movie_title)
  end
end
