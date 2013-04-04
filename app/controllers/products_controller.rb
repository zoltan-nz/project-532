class ProductsController < ApplicationController
  layout 'backend'

  def index

  end

  def show
    @departments ||= Department.all
    @categories ||= Category.all
    @products ||= Product.all


  end
end
