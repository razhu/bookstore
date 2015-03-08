class RenameLocationToPlaceInPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :location, :place
  end
end
