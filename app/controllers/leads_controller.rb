require 'uri'
require 'net/http'
require 'dotenv/rails-now'

class LeadsController < ApplicationController
  def create
    @lead = Lead.new(lead_params)
    @lead.save
    url = URI("https://api.trello.com/1/cards?name=#{@lead.first_name}&desc=#{@lead.message}&pos=bottom&idList=5cc1bf584bd2272619745152&keepFromSource=all&key=#{ENV['TRELLO_API_KEY']}&token=#{ENV['TRELLO_API_TOKEN']}")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)

    response = http.request(request)
    puts response.read_body
  end

  private

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :email, :company, :message)
  end
end
