class AdminController < ApplicationController
  def index
      @business = Business.new
  end

end