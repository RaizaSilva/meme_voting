class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
        t.string :photo_name
        t.integer :user_id
        t.string :photo_img_id

      t.timestamps null: false
    end
  end
end
