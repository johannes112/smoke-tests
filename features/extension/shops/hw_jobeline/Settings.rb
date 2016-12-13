#hw_jobeline
class Settings
  attr_accessor :url_checkout_confirm, :url_add_comand, :urlHttp, :urlHttps, :urlBackend, :baby_steps
  
  def initialize
    if ENV['SYSTEM'] == "int"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://int.jobeline.de/'
        when (/at/) then 'http://int.jobeline.at/'
        when (/ch/) then 'http://int.jobeline.ch/'
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when (/de/) then 'https://int.jobeline.de/'
        when (/at/) then 'https://int.jobeline.at/'
        when (/ch/) then 'https://int.jobeline.ch/'
      end
      @urlBackend = 'https://int.jobeline.de/'
    end
    
    if ENV['SYSTEM'] == "live"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://test.jobeline.de/'
        when (/at/) then 'http://test.jobeline.at/'
        when (/ch/) then 'http://test.jobeline.ch/'
      end
      @urlHttps = case ENV['COUNTRY']
        when (/de/) then 'https://test.jobeline.de/'
        when (/at/) then 'https://test.jobeline.at/'
        when (/ch/) then 'https://test.jobeline.ch/'
      end
      @urlBackend = 'http://test.jobeline.de/'
    end
    @url_checkout_confirm = "checkout/shippingPayment"
    @url_add_comand = 'direktbestellen'
    @baby_steps = true
  end
end