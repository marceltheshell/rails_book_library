class LocationsController < ApplicationController
  
  def show
    @location = Location.find(params[:id])
    @book_items = Location.get_local_books(@location.name)
    
  end
  def checkout_book
    a = params[:data]
    puts 'heloooooooooo'
    binding.pry
    CheckoutRecord.create!(bookItem: bookItem, user: user)
    #also change the bookItem to checked_out
  end
end