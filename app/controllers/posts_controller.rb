class PostsController < ApplicationController
  def new
  end

  def edit
  end

  def create
    @post = Post.create(post_params)
  end

  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

  def post_params
    params.require(:post).permit(:poster_image)
  end
end
