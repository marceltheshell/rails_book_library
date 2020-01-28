class Book < ApplicationRecord
    belongs_to :author
    has_and_belongs_to_many :genres
    has_many :book_items, dependent: :destroy
end
