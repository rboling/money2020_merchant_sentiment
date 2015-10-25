class ScorePayment
  def call(pending_payment, sentiment=nil)
    pending_payment = PendingPayment.find(pending_payment.to_i)

    url = Rails.application.config.base_url + "payments" 
    headers = {"Content-Type" => "application/json"}
    user_id = "user" + pending_payment.id.to_s
    payload = "{ \"amount\": #{pending_payment.amount}, \"user_id\": \"#{user_id}\", \"merchant_id\": \"#{pending_payment.merchant_id.to_s}\"}"
    if not sentiment.nil?
      yelp_sum = sentiment["yelp_sum"]
      bbb_rating = sentiment["bbb_rating"]
      payload = "{ \"amount\": #{pending_payment.amount}, \"user_id\": \"#{user_id}\", \"merchant_id\": \"#{pending_payment.merchant_id.to_s}\", \"user_defined\": { \"yelp_sum\": \"#{yelp_sum}\", \"bbb_rating\": \"#{bbb_rating}\"  } }"
    end
    response = RestClient::Request.execute(method: :post, url: url, user: Rails.application.config.feedzai_key, payload: payload, headers: headers)  
    db_pending_payment = PendingPayment.find(pending_payment.id)
    db_pending_payment.is_deleted = true
    db_pending_payment.save
  end
end