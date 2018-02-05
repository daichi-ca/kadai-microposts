class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :follow
  
  validates :user_id, presence: true
  validates :micropost_id, presence: true
end
