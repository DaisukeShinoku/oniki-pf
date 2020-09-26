class UsersController < ApplicationController
  def show
    
  end

  def index
    
  end
  

  def new
    
  end
  
  def create
    
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
