class PaymentsController < ApplicationController
  def relabel_payment
  	RelabelPayment.new.call(params[:payment], params[:new_label])
  	redirect_to root_url
  end

  def score_payment
  	puts "\n\n\n\nparams: #{params}\n\n\n\n\n"
  	ScorePayment.new.call(params[:pending_payment], params[:sentiment])
  	redirect_to root_url
  end
end
