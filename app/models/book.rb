class Book < ApplicationRecord
    belongs_to :author
    has_and_belongs_to_many :genres
    has_many :book_items, dependent: :destroy

    def self.search(search)
        if !search.blank?
            search.downcase!
            Book.joins(:genres).where("Genres.title = '#{search}'")
        else
            Book.all
        end
    end

    def self.get_copies(title)
        BookItem.joins(:book).where("title = '#{title}'")
    end
end
