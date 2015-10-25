class HomeController < ApplicationController
  def index
  	if params["Merchant"].nil?
  	  @merchant = Merchant.find(1)
  	else
      @merchant = Merchant.all.where(name: params["Merchant"][:merchant_id]).first
  	end
  end

  def about
  end

  def contact
  end
end
