class SessionsController < ApplicationController
  def new
    @user = User.new
    render layout: "session"
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to sessions_new_url
  end

  def login
    # binding.pry
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      redirect_to welcome_home_url
    else
      redirect_to sessions_new_url
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end
