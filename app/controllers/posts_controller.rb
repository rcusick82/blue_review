class PostsController < ApplicationController
  def index
  end

  def new
  	@post = Post.new
  end

  def create
  	Post.create(title:params[:post][:title], body:params[:post][:body])
    redirect_to posts_path
  end

  def show
    @post = Post.find params[:id]
  end
end
