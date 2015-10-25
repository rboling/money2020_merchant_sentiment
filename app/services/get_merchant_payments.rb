class GetMerchantPayments
  def call(merchant)
  	url = Rails.application.config.base_url + "payments"
  	response = RestClient::Request.execute(method: :get, url: url, user: merchant.api_key)
    payments = 	(JSON.parse response.body).map{|payment| payment["payment"]}
  end
end