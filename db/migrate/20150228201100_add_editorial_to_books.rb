class AddEditorialToBooks < ActiveRecord::Migration
  def change
    add_column :books, :editorial, :string
  end
end
