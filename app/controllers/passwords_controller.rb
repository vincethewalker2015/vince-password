class PasswordsController < ApplicationController
    
  def new
    @password =Password.new
  end
  
  def create
    @password = Password.new(password_params)
    if @password.save
    redirect_to password_path(@password)
    else
    render 'new'
    end
  end
  
  private
  
  def password_params
    params.require(:password).permit(:name, :user_name, :password)
  end
    
end