class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.boolean :availability
      t.boolean :unavailability

      t.timestamps null: false
    end
  end
end
