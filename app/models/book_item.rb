class BookItem < ApplicationRecord
    belongs_to :location
    belongs_to :book 
    has_many :checkout_records, dependent: :destroy
end
