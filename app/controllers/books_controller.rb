class BooksController < ApplicationController
  def index
    @books = Book.search(params[:search])
  end

  def show
  end
end
