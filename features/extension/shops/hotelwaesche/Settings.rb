#hotelwaesche
class Settings
  attr_accessor :url_checkout_confirm, :url_add_comand, :urlHttp, :urlHttps, :urlBackend, :baby_steps
  
  def initialize
    if ENV['SYSTEM'] == "int"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://int.hotelwaesche.de/'
        when (/at/) then 'http://int.hotelwaesche.at/'
        when (/ch/) then 'http://int.erwinmueller.ch/ch-de/'
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when (/de/) then 'https://int.hotelwaesche.de/'
        when (/at/) then 'https://int.hotelwaesche.at/'
        when (/ch/) then 'https://int.erwinmueller.ch/ch-de/'
      end
      @urlBackend = 'https://int.hotelwaesche.de/'
    end
    
    if ENV['SYSTEM'] == "live"
      @urlHttp = case ENV['COUNTRY']        
        when (/de/) then 'http://test.hotelwaesche.de/'
        when (/at/) then 'http://test.hotelwaesche.at/'
        when (/ch/) then 'http://test.erwinmueller.ch/ch-de/'
      end
      @urlHttps = case ENV['COUNTRY']
        when (/de/) then 'http://test.hotelwaesche.de/'
        when (/at/) then 'http://test.hotelwaesche.at/'
        when (/ch/) then 'http://test.erwinmueller.ch/ch-de/'
      end
      @urlBackend = 'http://test.hotelwaesche.de/'
    end
    @url_checkout_confirm = "checkout/shippingPayment"
    @url_add_comand = 'direktbestellen'
    @baby_steps = true
  end
end