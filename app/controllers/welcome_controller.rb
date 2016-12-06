class WelcomeController < ApplicationController
  def index
    @posts = Post.all.order("created_at desc").limit(10)
    @projects = Project.all.order("created_at desc")
  end
end
