#export
class Settings
  attr_accessor :url_checkout_confirm, :url_add_comand, :urlHttp, :urlHttps, :urlBackend, :baby_steps
  
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
        when (/.*/) then 'http://www.em-group.com/'
      end
      @urlHttps = case ENV['COUNTRY']
        when (/.*/) then 'https://www.em-group.com/'
      end
      @urlBackend = 'https://www.em-group.com/'
    end
    @url_checkout_confirm = "checkout/confirm"
    @url_add_comand = 'addArticle/sTargetAction'
    @baby_steps = true
  end
end