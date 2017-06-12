class Favorite < ApplicationRecord
  belongs_to :user  #User:Favorite => 1:多
  belongs_to :micropost #Book:Favorite => 1:多
  
  validates :user, presence: true
  validates :user_id, uniqueness: { scope: :micropost_id }
  validates :micropost, presence: true
end
