class AddCoverToNotebook < ActiveRecord::Migration
  def change
    add_column :notebooks, :cover, :string
  end
end
