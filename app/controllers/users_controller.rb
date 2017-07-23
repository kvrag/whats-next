class UsersController < ApplicationController

  def create
    @user = User.create(thoughts: params[:thoughts])
  end
end