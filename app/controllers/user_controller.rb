class UserController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.save!
  end

  private
  def user_params
    params.require(:user).permit(:username, :f_name, :l_name)
  end
end
