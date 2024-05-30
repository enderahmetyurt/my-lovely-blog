class WelcomeController < ApplicationController
  def index
    @posts = Post.published
  end
end
