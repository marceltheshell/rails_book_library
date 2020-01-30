class ApplicationController < ActionController::Base
  include Clearance::Controller
  before_action :get_locations


  def get_locations
    @locations = Location.all
  end
  
end
