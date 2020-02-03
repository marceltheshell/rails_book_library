class CheckoutRecordsController < ApplicationController
  before_action :require_login
  def create
    bi = BookItem.find(params["book_item"])
    CheckoutRecord.create!(user: current_user, book_item: bi)
    BookItem.update(bi.id, available: false)
    redirect_to user_path(current_user)
  end
end
