class CheckoutRecord < ApplicationRecord
    belongs_to :user
    belongs_to :book_item
end
