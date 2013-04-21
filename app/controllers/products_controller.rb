class ProductsController < ApplicationController

  add_crumb('A product page mockup') {|instance| instance.send :products_path}

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
