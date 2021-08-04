class UsersController < ApplicationController
  def edit
  end
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params #ストロングパラメーター定義
    params.require(:user).permit(:name, :email)#Userモデルの更新時、nameとemailの編集を許可
  end
end
