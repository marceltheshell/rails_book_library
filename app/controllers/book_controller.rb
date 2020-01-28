class BookController < ApplicationController
  def index
    @books = Book.search(params[:search])
  end

  def create
  end

  def new
  end

  def destroy
  end

  def show
  end

  private
  def book_params
    params.require(:book).permit(:book_id, :title, :genre, :author, :location, :search)
  end
end