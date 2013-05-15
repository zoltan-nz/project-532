class ApplicationController < ActionController::Base
  protect_from_forgery

  add_crumb 'Home', '/'

    #Make a copy from flash message in AJAX header for using in :js responds
  def flash_to_headers
    return unless request.xhr?
    response.headers['X-Message'] = flash[:error] unless flash[:error].blank?
    response.headers['X-Message'] = flash[:notice] unless flash[:notice].blank?
    response.headers['X-Message'] = flash[:success] unless flash[:success].blank?
    response.headers['X-Message-Type'] = 'error' unless flash[:error].blank?
    response.headers['X-Message-Type'] = 'notice' unless flash[:notice].blank?
    response.headers['X-Message-Type'] = 'success' unless flash[:success].blank?
    flash.discard
  end
  
end
