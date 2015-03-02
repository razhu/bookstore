class AddSlugToNotebooks < ActiveRecord::Migration
  def change
    add_column :notebooks, :slug, :string
  end
end
