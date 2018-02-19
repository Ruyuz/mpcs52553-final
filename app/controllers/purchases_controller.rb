class PurchasesController < ApplicationController

  def index
  end

  def update
    purchase = Purchase.find_by(id: params["id"])
    purchase.user_id = params["user_id"]
    purchase.concert_id = params["concert_id"]
    purchase.update_time = Time.new
    purchase.save
    redirect_to "/purchases"
  end

  def destroy
    purchase = Purchase.find_by(id: params["id"])
    purchase.delete
    redirect_to "/purchases"
  end

  def create
    Purchase.create :user_id => params["user_id"],
                 :concert_id => params["concert_id"],
                 :update_time => Time.new
    redirect_to "/purchases"
  end



end
