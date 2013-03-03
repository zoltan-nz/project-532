class TemplatesController < ApplicationController
  def show
    @template = Template.new()
  end
end
