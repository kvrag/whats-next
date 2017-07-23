class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(thoughts: user_params)
    render 'spins/new'
  end

  private
    def user_params
      params.require(:user).permit(:thoughts)
    end
end