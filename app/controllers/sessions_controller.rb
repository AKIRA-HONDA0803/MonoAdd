class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = 'ログインに成功しました。'
      redirect_to root_url
    else
      flash[:danger] = 'メールアドレスとパスワードの組み合わせが不適切です。'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
