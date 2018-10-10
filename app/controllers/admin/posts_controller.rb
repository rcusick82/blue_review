class Admin::PostsController < ApplicationController
  def index

  end

  def new
    @post = Post.new
  end

  def create
    Post.create(title:params[:post][:title], body:params[:post][:body])
    redirect_to posts_path
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    @post.save
    redirect_to posts_path
  end
end