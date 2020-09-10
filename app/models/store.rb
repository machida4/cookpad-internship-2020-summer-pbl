class Store < ApplicationRecord
  has_many :menus, through: :available_menus
  has_many :store_reviews
  has_many :user_purchase_histories

  mount_uploader :image_path, ImageUploader
end
