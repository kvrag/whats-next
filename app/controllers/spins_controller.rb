class SpinsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    redirect_to user_spin_path(@user)
  end

  def show 
    @user = User.find(params[:user_id])
    @feeling = Feeling.find_by(name: @user.top_feeling)
    render 'spins#show'
  end
end