class UsersController < ApplicationController

  def index
    @title = "ユーザー一覧"
    @users = User.all
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :show, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
