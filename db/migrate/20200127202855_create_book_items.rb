class CreateBookItems < ActiveRecord::Migration[6.0]
  def change
    create_table :book_items do |t|
      t.references :book, foreign_key: true
      t.timestamps
    end
  end
end
