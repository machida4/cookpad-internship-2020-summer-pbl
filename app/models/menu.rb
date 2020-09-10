class Menu < ApplicationRecord
  has_many :stores, through: :available_menus
  has_many :menu_reviews
  belongs_to :user_purchase_history, optional: true

  mount_uploader :image, ImageUploader
end
