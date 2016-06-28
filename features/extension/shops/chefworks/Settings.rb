#chefworks
class Settings
  attr_accessor :url_checkout_confirm, :url_add_comand, :urlHttp, :urlHttps, :urlBackend, :baby_steps, :vat
  
  def initialize
    if ENV['SYSTEM'] == "int"
      @urlHttp = case ENV['COUNTRY']
        when 'de' then nil
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when 'de' then 'http://int.chefworks.de/'
      end
      @urlBackend = 'http://int.chefworks.de/'
    end
    
    if ENV['SYSTEM'] == "live"
      @urlHttp = case ENV['COUNTRY']
        when 'de' then nil
      end
      @urlHttps = case ENV['COUNTRY']
        when 'de' then 'https://www.chefworks.de/'
      end
      @urlBackend = 'https://www.chefworks.de/backend/'
    end
    @url_checkout_confirm = "checkout/confirm"
    @url_add_comand = 'addArticle/sTargetAction'
    @baby_steps = true
    @vat = 0.19
  end
end