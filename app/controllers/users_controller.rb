class UsersController < ApplicationController

  def index
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    response = ->(data) { data.save ? redirect_to(users_url) : render('new') }
    response.call(@user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
