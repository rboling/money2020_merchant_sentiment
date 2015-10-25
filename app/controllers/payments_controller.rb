class PaymentsController < ApplicationController
  def relabel_payment
  	RelabelPayment.new.call(params[:payment], params[:new_label])
  	redirect_to controller: :home, action: :index, :Merchant => {merchant_id: params[:merchant_name]}
  end

  def score_payment
  	ScorePayment.new.call(params[:pending_payment], params[:sentiment])
  	redirect_to controller: :home, action: :index, :Merchant => {merchant_id: params[:merchant_name]}
  end
end
