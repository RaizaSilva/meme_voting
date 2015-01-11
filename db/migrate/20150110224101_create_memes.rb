class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :name
      t.string :meme_img_id

      t.timestamps null: false
    end
  end
end
