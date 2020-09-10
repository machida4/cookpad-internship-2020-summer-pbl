class Store < ApplicationRecord
  has_many :menus, through: :available_menus
  has_many :user_purchase_histories
  has_many :menus

  mount_uploader :image, ImageUploader
end
