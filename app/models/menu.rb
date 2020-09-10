class Menu < ApplicationRecord
  has_many :menu_reviews

  has_many :user_purchase_histories
  belongs_to :store

  mount_uploader :image, ImageUploader

  def average_star
    stars = self.menu_reviews.pluck(:star)
    if stars.present?
      stars.sum(0.0) / stars.size
    else
      0
    end
  end
end
