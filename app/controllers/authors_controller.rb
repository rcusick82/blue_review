class UsersController < ApplicationController
  def index
  end

  def show
    @author = User.find params[:id]
  end
end
