class GetMerchantPayments
  def call(merchant)
  	url = Rails.application.config.base_url + "payments"
  	response = RestClient::Request.execute(method: :get, url: url, user: merchant.api_key)
  	paymentScores = JSON.parse response.body
  end
end