class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
        t.integer :user_id
        t.integer :meme_id
        t.integer :photo_id

      t.timestamps null: false
    end
  end
end
