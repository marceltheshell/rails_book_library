class CreateCheckoutRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :checkout_records do |t|
      t.belongs_to :book_item
      t.belongs_to :user
      t.timestamps
    end
  end
end
