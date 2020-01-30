class Location < ApplicationRecord
    has_many :book_items

    def self.get_local_books(branch_name)
        @book_items = BookItem.joins(:book).joins(:location).where("name LIKE '%#{branch_name}%'")
    end
end
