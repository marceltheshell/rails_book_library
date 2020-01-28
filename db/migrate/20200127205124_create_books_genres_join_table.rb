class CreateBooksGenresJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :books, :genres
  end
end
