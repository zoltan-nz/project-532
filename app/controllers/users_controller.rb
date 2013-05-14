class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @kids = @user.kids.build
    @userorders = @user.orders.build
    @kidsorders = @kids.orders.build
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params[:user].permit(:email)
  end

end