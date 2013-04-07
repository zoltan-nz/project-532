class ProductsController < ApplicationController
  layout 'backend'

  def index
    @departments ||= Department.all
    @categories ||= Category.all
    @products ||= Product.all

  end

  def show
    @departments ||= Department.all
    @categories ||= Category.all
    @products ||= Product.all


  end
end
