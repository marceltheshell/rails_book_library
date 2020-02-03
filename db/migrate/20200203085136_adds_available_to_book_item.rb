class AddsAvailableToBookItem < ActiveRecord::Migration[6.0]
  def change
    add_column :book_items, :available, :boolean, :default => true
  end
end
