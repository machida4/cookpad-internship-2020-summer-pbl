class UserPurchaseHistory < ApplicationRecord
  belongs_to :user
  belongs_to :store
  has_one :menu
end
