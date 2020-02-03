class Book < ApplicationRecord
    belongs_to :author
    has_and_belongs_to_many :genres
    has_many :book_items, dependent: :destroy

    def self.search(search)
        if search
            # BookItem.joins(:book).where("title LIKE '%#{search}%'")
        else
            Book.all
        end
    end
end
