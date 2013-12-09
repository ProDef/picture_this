class CreateFavouritePhotos < ActiveRecord::Migration
  def change
    create_table :favourite_photos do |t|
      t.integer :photo_id
      t.integer :user_id

      t.timestamps
    end
  end
end
