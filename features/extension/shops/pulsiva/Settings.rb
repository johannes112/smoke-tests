#pulsiva
class Settings
  attr_accessor :url_checkout_confirm, :url_add_comand, :urlHttp, :urlHttps, :urlBackend, :baby_steps
  
  def initialize
    if ENV['SYSTEM'] == "int"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://int.pulsiva.com/de-de/'
        when (/at/) then 'http://int.pulsiva.com/at-de/'
        when (/it/) then 'http://int.pulsiva.com/it-it/'
        when (/fr/) then 'http://int.pulsiva.com/fr-fr/'
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when (/de/) then 'https://int.pulsiva.com/de-de/'
        when (/at/) then 'https://int.pulsiva.com/at-de/'
        when (/it/) then 'https://int.pulsiva.com/it-it/'
        when (/fr/) then 'https://int.pulsiva.com/fr-fr/'
        end
      @urlBackend = 'https://int.pulsiva.com/'
    end
    
    if ENV['SYSTEM'] == "live"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://www.pulsiva.com/de-de/'
        when (/at/) then 'http://int.pulsiva.com/at-de/'
        when (/it/) then 'http://int.pulsiva.com/it-it/'
        when (/fr/) then 'http://int.pulsiva.com/fr-fr/'
      end
      @urlHttps = case ENV['COUNTRY']
        when (/de/) then 'https://www.pulsiva.com/de-de/'
        when (/at/) then 'https://int.pulsiva.com/at-de/'
        when (/it/) then 'https://int.pulsiva.com/it-it/'
        when (/fr/) then 'https://int.pulsiva.com/fr-fr/'
      end
      @urlBackend = 'https://www.pulsiva.com/'
    end
    @url_checkout_confirm = "checkout/shippingPayment"
    @url_add_comand = 'direktbestellen'
    @baby_steps = true
  end
end