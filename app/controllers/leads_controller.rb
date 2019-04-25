require 'uri'
require 'net/http'

class LeadsController < ApplicationController
  def create
    @lead = Lead.new(lead_params)
    @lead.save
    # card_title = "#{@lead.first_name} #{@lead.last_name}"
    # card_description = "First name: #{@lead.first_name}            Last name: #{@lead.last_name}                 Email: #{@lead.email}               Company: #{@lead.company}                Phone number: #{@lead.phone_number}                    Message: #{@lead.message}"
    # url = URI("https://api.trello.com/1/cards?name=#{card_title}&desc=#{card_description}&pos=bottom&idList=5cc1bf584bd2272619745152&keepFromSource=all&key=#{ENV['TRELLO_API_KEY']}&token=#{ENV['TRELLO_API_TOKEN']}")
    # http = Net::HTTP.new(url.host, url.port)
    # http.use_ssl = true
    # http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    # request = Net::HTTP::Post.new(url)

    # response = http.request(request)
  end

  private

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :email, :company, :message)
  end
end
