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
    response_data = with_http_retries{self.class.get(url, options)}
    if response_data.success?
      response_data
    else
      puts ">>>>>>>>> Can not connect"
      puts "Errortxt: #{response_data}"
      raise(ScriptError, "Error: read failed!")
    end
    response_data_json = response_data.parsed_response
    return response_data_json
  end
  def updateData(url, options)
    #puts "updateData:#{url}"
    #sleep 2
    response_data = with_http_retries{self.class.put(url, options)}
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
    response_data = with_http_retries{self.class.delete(url, options)}
    if response_data.success?
      response_data
    else
      puts ">>>>>>>>> Can not connect"
      puts "Errortxt: #{response_data}"
      raise(ScriptError, "Error: delete failed!")
    end
  end


# Simple wrapper to allow retries for HTTP requests - prolongs daemon life.
  def with_http_retries(&block)
    max_retries = 3
    times_retried = 0
    begin
      yield
    rescue Net::ReadTimeout => error
    puts "CustomErrorNet: #{error}"
      if times_retried < max_retries
        times_retried += 1
        puts "Failed to <do the thing>, retry #{times_retried}/#{max_retries}"
        sleep 9
        retry
      else
        puts "Exiting script. <explanation of why this is unlikely to recover>"
      end
    end
  end
  
end
