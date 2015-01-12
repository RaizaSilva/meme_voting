class Vote < ActiveRecord::Base
  belongs_to :photo, counter_cache: true
  belongs_to :meme

  scope :photo_most_voted, ->(photo_id) { where(photo_id: photo_id).select(:meme_id).group(:meme_id).count.sort.reverse.to_h }
  scope :already_voted, ->(user_id, photo_id) { where(user_id: user_id, photo_id: photo_id) }
end
