class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :main_image
      t.json :event_photos

      t.timestamps
    end
  end
end
