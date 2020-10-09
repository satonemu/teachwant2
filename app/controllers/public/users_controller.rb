class Public::UsersController < ApplicationController

  def index
  end

  def show
  	@user = current_user
  end

  def edit
  end

  def user_params
    params.require(:user).permit(:name, :sex)
  end
end
