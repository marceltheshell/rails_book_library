class AddUserRefToBookItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :book_items, :user, foreign_key: true
  end
end

