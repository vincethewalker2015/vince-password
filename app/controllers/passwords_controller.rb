class PasswordsController < ApplicationController
  
  def index
    @passwords = Password.all
  end
    
  def new
    @password = Password.new
  end
  
  def create
    @password = Password.new(password_params)
    if @password.save
      flash[:success] = "Password Details Saved"
      redirect_to password_path(@password)
    else
      render 'new'
    end
  end
  
  def show
    @password = Password.find(params[:id])
  end
  
  def edit
    @password = Password.find(params[:id])
  end

  def update
    @password = Password.find(params[:id])
    if @password.update(password_params)
      flash[:success] = "Password details updated"
      redirect_to passwords_path
    else
      render 'edit'
    end
  end
  
  
  
  private
  
  def password_params
    params.require(:password).permit(:name, :user_name, :password)
  end
    
end