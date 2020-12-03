class UsersController < ApplicationController
  def new
    @new_user = User.new
  end
  
  def create
    @new_user = User.create(user_params)
    if @new_user.save && params[:user][:password] == params[:user][:password_confirmation]
      login(@new_user)
      redirect_to user_path(@new_user)
    else
      if params[:user][:password] != params[:user][:password_confirmation]
        @error = "Passwords do not match"
      end
      render :new
    end
  end

  def show
    if current_user && current_user.id == params[:id].to_i    
      @instruments = current_user.instruments.order(sort_column + ' ' + sort_direction)
    elsif current_user.id != params[:id].to_i
      logout
    else
      logout
    end
  end

  def edit
  end

  def update
    current_user.update(params.require(:user).permit(:username, :email, :password, :password_confirmation))
    redirect_to user_path(current_user)
  end

  def destroy
    current_user.destroy
    session.clear
    redirect_to login_path
  end

  private

  def user_params
     params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
