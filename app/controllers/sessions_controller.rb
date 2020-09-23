class SessionsController < ApplicationController
  def new
    @user = User.new
    # render layout: false
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to sessions_new_url
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end
