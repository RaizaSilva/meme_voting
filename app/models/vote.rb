class Vote < ActiveRecord::Base
  belongs_to :photo, counter_cache: true
  belongs_to :meme

  scope :photo_most_voted, ->(photo_id) { where(photo_id: photo_id).select(:meme_id).group(:meme_id).count.sort.reverse.to_h }
end
