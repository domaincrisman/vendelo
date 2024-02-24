require 'net/http'
# Class FetchCountryService
class FetchCountryService
  attr_reader :ip

  def initialize(ip)
    @ip = ip
  end
  define_method(:perform) do
    uri = URI("http://ip-api.com/json/#{ip}")
    response = Net::HTTP.get(uri)
    parsed_response = JSON.parse(response)
    status = parsed_response['status']
    if status == 'success'
      parsed_response['countryCode'].downcase
    end
  rescue 
    # Handle the error or log it
    nil
  end
end