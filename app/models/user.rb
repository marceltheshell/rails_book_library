class User < ApplicationRecord
  include Clearance::User

  validates :first_name, presence: true
  validates :last_name, presence: true
  
  has_many :checkout_records
  has_many :book_items, through: :checkout_records
  has_many :books, through: :book_items
end
