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
  default_timeout 20

  #crud comands
  def readData(url)
    options = getDigest()
    #puts "readData:#{url}"
    sleep 2
    response_data = self.class.get(url, options)
    if response_data.success?
      response_data
    else
      puts ">>>>>>>>> Can not connect"
      raise(ScriptError, "Error: update failed!")
    end
    response_data_json = response_data.parsed_response
    return response_data_json
  end
  def updateData(url, options)
    #puts "updateData:#{url}"
    #sleep 2
    response_data = self.class.put(url, options)
    if !response_data.success?
      puts ">> ERROR: update failed"
      puts "options: #{options}"
      puts "Error Msg: #{response_data}"
      raise(ScriptError, "Error: update failed!")
    end
  end
  def deleteData(url)
    #puts "deleteData:#{url}"
    options = getDigest()
    sleep 2
    response_data = self.class.delete(url, options)
    if response_data.success?
      response_data
    else
      puts ">>>>>>>>> Can not connect"
      raise(ScriptError, "Error: update failed!")
    end
  end
  
end

