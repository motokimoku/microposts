class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy #User:Favorite => 1:多
  has_many :favorite_users, through: :favorites, source: :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  # def favorited_by? user
  #   favorites.where(user_id: user.id).exists?
  # end
end
