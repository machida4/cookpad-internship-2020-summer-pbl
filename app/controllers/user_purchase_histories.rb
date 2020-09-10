class UserPurchaseHistoriesController < ApplicationController
  def index
    @user_purchase_histories = UserPurchaseHistory.all
  end
end
