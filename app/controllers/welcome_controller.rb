class WelcomeController < ApplicationController
  def index
    @user = User.all
    @post = Post.where(current_user(:id))
  end
end
