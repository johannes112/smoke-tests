#export
class Settings
  attr_accessor :url_checkout_confirm, :urlHttp, :urlHttps, :urlBackend, :baby_steps, :vat
  
  def initialize
    if ENV['SYSTEM'] == "int"
      @urlHttp = case ENV['COUNTRY']
        when (/.*/) then nil
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when (/.*/) then nil
        end
      @urlBackend = nil
    end
    
    if ENV['SYSTEM'] == "live"
      @urlHttp = case ENV['COUNTRY']
        when (/.*/) then nil
      end
      @urlHttps = case ENV['COUNTRY']
        when (/.*/) then 'https://www.em-group.com/'
      end
      @urlBackend = 'https://www.em-group.com/backend/'
    end
    @url_checkout_confirm = "checkout/confirm"
    @baby_steps = true
    @vat = 0.19
  end
end