class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    
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
    
  end

  def update
    
  end
  

  private

  def user_params
    params.require(:user).permit(:account_id, :email, :password, :name)
  end
  
  
end
