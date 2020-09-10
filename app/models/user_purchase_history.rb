class UserPurchaseHistory < ApplicationRecord
  belongs_to :user
  belongs_to :store
  has_one :menu, validate: false

  class Status
    PREPARING = 1
    WAITING = 2
    SUCCESS = 3
    CANCELLED = 100
  end
end
