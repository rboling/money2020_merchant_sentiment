class RelabelPayment
  def call(payment, new_label)
    url = Rails.application.config.base_url + "payments/#{payment.id}/label" 
    headers = {"Content-Type" => "application/json"}
    payload = "{ \"label\": \"#{new_label}\" }"
    response = RestClient::Request.execute(method: :put, url: url, user: Rails.application.config.feedzai_key, payload: payload, headers: headers)
  end
end