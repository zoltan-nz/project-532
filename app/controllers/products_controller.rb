class ProductsController < ApplicationController
  layout 'products'

  def index

  end

  def show
    @departments = Department.all
    @categories = Category.all
    @products = Product.all


  end
end
