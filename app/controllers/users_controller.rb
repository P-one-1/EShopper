class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?, only: :new#, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
    render layout: "session"
  end

  def show
    @user = current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to welcome_home_path
    else
      render 'new'
    end
  end

  private

  # def set_user
    # @user = User.find(params[:id])
  # end

  def user_params
    params.permit(:name, :email, :password)
  end
end
