class UsersController < ApplicationController

  def show
    if current_user
      @user = current_user
    else
      redirect_to login_path
    end
  end

  def new
    @user = User.new
    render
  end

  def create
    params[:password] = Digest::SHA1.hexdigest(:password.to_s)
    @user = User.new(user_params)
    if @user.save
      login(@user)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end


end
