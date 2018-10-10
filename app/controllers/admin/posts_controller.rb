class Admin::PostsController < ApplicationController
  def index

  end

  def new
    @post = Post.new
  end

  def create
    Post.create(title:params[:post][:title], body:params[:post][:body], authors:[Author.find(params[:post][:authors])], tags:Tag.find(params[:post][:tags]))
    redirect_to posts_path
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    @post.title = params[:post][:title]
    @post.authors = [Author.find(params[:post][:authors])]
    @post.body = params[:post][:body]
    @post.tags = Tag.find(params[:post][:tag_ids])
    @post.save
    redirect_to posts_path
  end
end
