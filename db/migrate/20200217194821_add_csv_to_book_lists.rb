class AddCsvToBookLists < ActiveRecord::Migration[5.2]
  def change
    add_column :book_lists, :csv, :string
  end
end
