require_relative "shopware_authentication.rb"
require_relative "shopware_functions.rb"
require 'httparty'
require 'json'
# Use the class methods to get down to business quickly
class ShopwareApi
  include HTTParty
  include ShopwareAuthentication
  include ShopwareFunctions
  
  #for int use htaccess-data too
  default_timeout 2

  #crud comands
  def readData(url)
    options = getDigest()
    response_data = self.class.get(url, options)
    if response_data.success?
      response_data
    else
      puts "Can not connect"
    end
    response_data_json = response_data.parsed_response
    return response_data_json
  end
  def updateData(url, options)
    response_data = self.class.put(url, options)
    puts "Responsecode:#{response_data.code.to_i}"
    if response_data.success?
      puts "SUCCESS: update completed"
    else
      puts "ERROR: update failed"
    end
  end
  def deleteData(url)
    options = getDigest()
    response_data = self.class.delete(url, options)
    if response_data.success?
      response_data
    else
      puts "Can not connect"
    end
  end
  
end

