class UsersController < ApplicationController
    
  def index
    @users = User.all
  end
  
  def new
    @users = User.new
  end
  
  def create
  @users = User.new(
  uid: params[:user][:uid], 
  pass: params[:user][:password],
  email: params[:user][:email])
  
    if @users.save
      redirect_to '/users/main'
  
    
    else 
    render new_user_path
    
    end
  end
  
  def destroy
    @users = User.find(params[:id])
    @users.destroy
    flash[:notice] = 'ユーザーを削除しました'
    redirect_to root_path
  end
  
 
end
