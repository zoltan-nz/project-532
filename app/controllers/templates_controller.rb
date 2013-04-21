class TemplatesController < ApplicationController

  add_crumb('Admin template') {|instance| instance.send :templates_path}

  def index

  end
end
