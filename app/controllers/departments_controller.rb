class DepartmentsController < ApplicationController

  before_action :set_department, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json, :js

  add_crumb('Departments') {|instance| instance.send :departments_path}

  def index
    @departments = Department.all

  end

  def show
  end

  def new
    @department = Department.new
  end

  def edit
    respond_to :js
  end

  def create
    @department = Department.new(department_params)

    @department.save
    respond_to :js
  end

  def update
    respond_to do |format|
      if @department.update(department_params)
        format.json {head :ok}
      else
        format.json { render json: @department.errors.full_messages, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @department.destroy
    respond_to do |format|
      format.html {redirect_to departments_url, notice: 'Department was successfully destroyed.'}
      format.json {head :ok}
      format.js
    end
  end

  private

    def set_department
      @department = Department.find(params[:id])
    end

    def department_params
      params[:department].permit(:name)
    end
end
