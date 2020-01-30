class LocationsController < ApplicationController
  
  def show
    @location = Location.find(params[:id])
    @book_items = Location.get_local_books(@location.name)
    
  end
  def checkout_book
    #using params[:data] passed in from the checkout book button
      #CheckoutRecord.create!(bookItem: bookItem, user: user)
      #also change the bookItem to checked_out
  end
end