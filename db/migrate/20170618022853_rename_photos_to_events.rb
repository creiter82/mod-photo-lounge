class RenamePhotosToEvents < ActiveRecord::Migration[5.0]
  def change
    rename_table :photos, :events
  end
end
