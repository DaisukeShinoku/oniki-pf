class UsersController < ApplicationController
  before_action :logged_in_user, only:[:show, :edit, :update]
  before_action :correct_user, only: [:show, :edit, :update]


  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success]="ログインに成功しました"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success]="会員情報を更新しました"
      redirect_to @user
    else
      render 'edit'
    end
  end
  

  private

  def user_params
    params.require(:user).permit(:account_id, :email, :password, :name)
  end
  
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "ログインしてください"
      redirect_to login_path
    end
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless @user == current_user
  end
  
end
