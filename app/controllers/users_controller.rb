class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Account created!"
      redirect_to root_path
    else
      render user_registration_path
    end
  end

  def show
    @user = User.find(params[:id])
    @message = Message.new
    @messages = Message.where(user_id: current_user.id)
  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :phone)
  end
end
