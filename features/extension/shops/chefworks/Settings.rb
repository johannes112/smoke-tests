class Settings
  attr_accessor :urlHttp, :urlHttps, :urlBackend, :baby_steps, :vat
  
  def initialize
    if ENV['SYSTEM'] == "int"
      @urlHttp = case ENV['COUNTRY']
        when 'de' then 'http://int.chefworks.de/'
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when 'de' then 'http://int.chefworks.de/'
      end
      @urlBackend = 'http://int.chefworks.de/backend/'
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
    
    @baby_steps = true
    @vat = 0.19
  end
end