class AdminController < ApplicationController
  def index
      @product = Product.new
  end

end