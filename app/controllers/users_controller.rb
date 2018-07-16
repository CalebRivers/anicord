class UsersController < ApplicationController
  def home
    @user = User.new
  end

  def create
    @user = User.new (user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_show_path # Redirect to home if the account is valid
    else
      render :home # Let them retry the form again
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def login
  end

  def show
    @current_user = @user
  end

  def edit
  end

  def add
  end
end
