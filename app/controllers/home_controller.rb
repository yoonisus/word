class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
  def write
    post= Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save
    redirect_to "/home/index"
  end
end

