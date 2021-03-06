class Admin::TagsController < ApplicationController
  def index

  end

  def new
    @tag = Tag.new
  end

  def create
    Tag.create(name:params[:tag][:name])
    redirect_to admin_tags_path
  end

  def edit
    @tag = Tag.find params[:id]
  end

  def update
    @tag = Tag.find params[:id]
    @tag.name = params[:tag][:name]
    # @tag.body = params[:tag][:body]
    @tag.save
    redirect_to admin_tags_path
  end

  def destroy
    Tag.find(params[:id]).delete
    redirect_to admin_tags_path
  end
end
