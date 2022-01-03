class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "アカウントの登録に成功しました。"
      redirect_to root_url
    else
      flash[:danger] = "アカウントの登録に失敗しました。"
      redirect_to signup_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
