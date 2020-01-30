class LocationsController < ApplicationController
  
  def show
    @location = Location.find(params[:id])
    @book_items = Location.get_local_books(@location.name)
  end
end