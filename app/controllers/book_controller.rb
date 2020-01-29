class BookController < ApplicationController
  def index
  end

  def show
  end

  private
  def book_params
    params.require(:book).permit(:book_id, :title, :genre, :author, :location, :search)
  end
end
