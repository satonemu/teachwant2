class Public::UsersController < ApplicationController

  def index
  end

  def show
  	@user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
      if @user.update(user_params)
         redirect_to public_user_path(@user.id)
      else
         render 'edit'
      end
  end

  def user_params
    params.require(:user).permit(:name, :email, :sex)
  end
end
