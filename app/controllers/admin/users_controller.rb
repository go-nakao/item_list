class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save #登録後、ユーザー一覧画面に遷移
      redirect_to admin_users_url(@user), notice: "ユーザー「#{ @user.name }」を登録しました。"
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :admin, :password, :password_confirmaion)
  end

end
