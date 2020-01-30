class BookItem < ApplicationRecord
    belongs_to :location
    belongs_to :book
    has_many :checkout_records, dependent: :destroy

    ####
    

    # get all the records from teh DB and push them into an arr

    # search all the records

    def self.search(search)
        if search
            BookItem.joins(:book).where("title LIKE '%#{search}%'")
        else
            book_items = BookItem.all 
        end
    end
end
