class DepartmentsController < ApplicationController
  layout 'backend'
  before_action :set_department, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json, :js

  # GET /departments
  def index
    @departments = Department.all
  end

  # GET /departments/1
  def show
  end

  # GET /departments/new
  def new
    @department = Department.new
  end

  # GET /departments/1/edit
  def edit
    respond_to :js
  end

  # POST /departments
  def create
    @department = Department.new(department_params)

    @department.save
    respond_to :js

  end

  # PATCH/PUT /departments/1
  def update

    #respond_with @department
    respond_to do |format|
      if @department.update(department_params)
        format.json {head :ok}
      else
        format.json { render json: @department.errors.full_messages, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /departments/1
  def destroy
    @department.destroy
    respond_to do |format|
      format.html {redirect_to departments_url, notice: 'Department was successfully destroyed.'}
      format.json {head :ok}
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params[:department].permit(:name)
    end
end
