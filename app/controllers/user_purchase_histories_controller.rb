class UserPurchaseHistoriesController < ApplicationController
  def index
    @user_purchase_histories = UserPurchaseHistory.where(status: UserPurchaseHistory::Status::PREPARING)
                              .or(UserPurchaseHistory.where(status: UserPurchaseHistory::Status::WAITING))
    @old_user_purchase_histories = UserPurchaseHistory.where(status: UserPurchaseHistory::Status::SUCCESS)
                                   .or(UserPurchaseHistory.where(status: UserPurchaseHistory::Status::CANCELLED))
  end
end
