class CategoriesController < ApplicationController

    before_action :set_category, only: [:show, :edit, :update, :destroy]
    add_crumb('Categories') {|instance| instance.send :categories_path }

    respond_to :js, :html

    def index
      @categories = Category.all.order(lft: :asc)
    end

    def show
    end

    def new
      @category = Category.new
    end


    def edit
    end

    def create
      @category = Category.new(category_params)

      @category.save
      @categories = Category.all #Need for 'parent_category_list' in Helper to generate a dropdown list.
      respond_to do |f|
        f.html { redirect_to(categories_path)}
        f.js
      end
    end

    def update
      respond_to do |format|
        if @category.update(category_params)
          format.json {head :ok}
        else
          format.json {render json: @category.errors.full_messages, status: :unprocessable_entity}
        end
      end
    end

    def destroy
      @category.destroy
    end

    private

    def set_category
      @category = Category.find(params[:id])
    end


    def category_params
      params[:category].permit(:name, :parent_id, :attachment)
    end
end
