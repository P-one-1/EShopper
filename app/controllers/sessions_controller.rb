class SessionsController < ApplicationController
  # before_action :logged_in?, only: [:destroy]

  def login
    @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_url
    else
      redirect_to users_new_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
