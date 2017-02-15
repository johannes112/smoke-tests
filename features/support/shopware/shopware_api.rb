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
  default_timeout 10

  #file
  #out_file = File.new("httpactions.log", "w")
  #logger
  #debug_output out_file
  
  #crud comands ----------------------------------------------------
  #create
  def postData(url, options)
    response_data = handle_timeouts{self.class.post(url, options)}
    if !response_data.success? || !response_data
      puts ">> ERROR: post-action failed"
      puts "data: #{options}"
      puts "Error Msg: #{response_data}"
      raise(ScriptError, "Error: post failed!")
      exit
    end
  end

  #read
  def readData(url)
    options = getDigest()
    sleep 2
    response_data = handle_timeouts{self.class.get(url, options)}
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
  #update
  def updateData(url, options)
    response_data = handle_timeouts{self.class.put(url, options)}
    if !response_data.success?
      puts ">> ERROR: update failed"
      puts "options: #{options}"
      puts "Error Msg: #{response_data}"
      raise(ScriptError, "Error: update failed!")
    end
  end
  #delete
  def deleteData(url)
    options = getDigest()
    sleep 2
    response_data = handle_timeouts{self.class.delete(url, options)}
    if response_data.success?
      response_data
    else
      puts ">>>>>>>>> Can not connect"
      puts "Errortxt: #{response_data}"
      raise(ScriptError, "Error: delete failed!")
    end
  end
  
  #catch exception
  def handle_timeouts(&block)
    max_retries = 3
    times_retried = 0
    begin
      yield
    rescue Net::OpenTimeout, Net::ReadTimeout => e
      puts "Timeout"
      puts "#{e}"
    rescue SocketError => e
      puts "incorrect URL"
      puts "#{e}"
      if times_retried < max_retries
        times_retried += 1
        puts "Failed to <do the thing>, retry #{times_retried}/#{max_retries}"
        sleep 9
        retry
      end
    end
  end

end
