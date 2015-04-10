class UsersController < ApplicationController
  before_action :find_all_users

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Created New User"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Updated User Information"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end




private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

  def find_all_users
    @users = User.all
  end
end
