class PostsController < ApplicationController
  def index
  end

  def new
  	@post = Post.new
  end

  def create
  	
  end

  def show
    @post = Post.find params[:id]
  end
end
