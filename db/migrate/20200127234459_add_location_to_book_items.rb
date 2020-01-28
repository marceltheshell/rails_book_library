class AddLocationToBookItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :book_items, :location, foreign_key: true
  end
end