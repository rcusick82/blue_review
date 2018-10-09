class TagsController < ApplicationController
  def index
  end

  def new
  	@tag = Tag.new
  end

  def create
  	
  end

  def show
    @tag = Tag.find params[:id]
  end
end
