class Photo < ActiveRecord::Base
  has_many :votes
  belongs_to :user

  attachment :photo_img

  scope :more_recent, -> { order(created_at: :desc) }
  scope :more_voted, -> { order(votes_count: :desc) }
end
