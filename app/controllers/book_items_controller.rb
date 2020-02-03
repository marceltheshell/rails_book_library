class BookItemsController < ApplicationController
  def index
    @book_items = BookItem.search(params[:search])
  end

  def show
    @book_item = BookItem.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:book_id, :title, :genre, :author, :location, :search)
  end
end
