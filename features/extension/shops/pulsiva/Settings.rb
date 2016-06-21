#pulsiva
class Settings
  attr_accessor :url_checkout_confirm, :urlHttp, :urlHttps, :urlBackend, :baby_steps, :vat
  
  def initialize
    if ENV['SYSTEM'] == "int"
      @urlHttp = case ENV['COUNTRY']
        when (/.*/) then 'http://int.pulsiva.com/de-de/'
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when (/de/) then 'https://int.pulsiva.com/de-de/'
        end
      @urlBackend = 'https://int.pulsiva.com/backend/'
    end
    
    if ENV['SYSTEM'] == "live"
      @urlHttp = case ENV['COUNTRY']
        when (/.*/) then nil
      end
      @urlHttps = case ENV['COUNTRY']
        when (/de/) then 'https://www.pulsiva.com/de-de/'
      end
      @urlBackend = 'https://www.pulsiva.com/backend/'
    end
    @url_checkout_confirm = "checkout/shippingPayment"
    @baby_steps = true
    @vat = 0.19
  end
end