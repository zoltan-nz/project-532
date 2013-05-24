class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @orders = @user.orders.build
    @meal = @orders.build_meal
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Kid was successfully created.' }
        format.json { render action: 'index', status: :created}
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  def show

  end

  def edit

  end

  def update
        respond_to do |format|
      if needs_password?(@user, user_params)
        @user.update_with_password(user_params)
        flash[:success] = 'Employee was successfully updated. Password was successfully updated'
        format.js {render 'update'}
      else
          if @user.update_without_password(user_params)
            flash[:success] = 'Employee was successfully updated.'
            format.js {render 'update'}
          else
            flash[:error] = @user.errors.full_messages.join(', ')
            format.js {render json: @user.errors.full_messages, status: :unprocessable_entity}
          end
      end
    end

  end

  def destroy

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params[:user].permit(:name, :email, :kids_attributes => [:name, :age], :orders_attributes => [:date, :meal_attributes => [:name]], :meals_attributes => [:name, :price], :meal_attributes => [:name, :price])
  end

  def needs_password?(user, user_params)
    !user_params[:password].blank?
  end

end