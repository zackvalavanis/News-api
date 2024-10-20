class NewsController < ApplicationController
  require 'http'

  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=tesla&from=2024-09-20&sortBy=publishedAt&apiKey=#{Rails.application.credentials[:News_Api_Key]}")
    
    json_response = response.parse(:json)
    
    p json_response

    render json: json_response
  end
end
