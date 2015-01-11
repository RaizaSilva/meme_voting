class AddCounterCacheToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :votes_count, :integer
  end
end
