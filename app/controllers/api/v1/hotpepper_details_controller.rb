class Api::V1::HotpepperDetailsController < ApplicationController
  require 'httpclient'

  def create
    base_url = "#{ENV['SECRET_KEY_DETAIL']}" + params[:key]
    client = HTTPClient.new()
    response = client.get(base_url)
    json = JSON.parse(response.body)
    puts response.status
    puts response.body
    render json: json
  end

  private

  def hotpepper_params
    params.permit(:key)
  end
end
