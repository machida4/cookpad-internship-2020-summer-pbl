class User < ApplicationRecord
  has_many :menu_reviews
  has_many :user_purchase_histories

  mount_uploader :image, ImageUploader
end
