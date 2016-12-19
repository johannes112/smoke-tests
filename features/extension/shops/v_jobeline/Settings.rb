#v_jobeline
class Settings
  attr_accessor :url_checkout_confirm, :url_add_comand, :urlHttp, :urlHttps, :urlBackend, :baby_steps
  
  def initialize
    if ENV['SYSTEM'] == "int"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://int.jobeline.com/de-de/'
        when (/ch/) then 'http://int.jobeline.com/at-de/'
        when (/at/) then 'http://int.jobeline.com/ch-de/'
        when (/it/) then 'http://int.jobeline.com/it-it/'
        when (/fr/) then 'http://int.jobeline.com/fr-fr/'
        when (/no/) then 'http://int.jobeline.com/no-no/'
        when (/se/) then 'http://int.jobeline.com/se-se/'
        when (/nl/) then 'http://int.jobeline.com/nl-nl/'
        when (/be/) then 'http://int.jobeline.com/be-fr/'
        when (/es/) then 'http://int.jobeline.com/es-es/'
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when (/de/) then 'https://int.jobeline.com/de-de/'
        when (/at/) then 'https://int.jobeline.com/at-de/'
        when (/ch/) then 'https://int.jobeline.com/ch-de/'
        when (/it/) then 'https://int.jobeline.com/it-it/'
        when (/fr/) then 'https://int.jobeline.com/fr-fr/'
        when (/no/) then 'https://int.jobeline.com/no-no/'
        when (/se/) then 'https://int.jobeline.com/se-se/'
        when (/nl/) then 'https://int.jobeline.com/nl-nl/'
        when (/be/) then 'https://int.jobeline.com/be-fr/'
        when (/es/) then 'https://int.jobeline.com/es-es/'
        end
      @urlBackend = 'https://int.jobeline.com/'
    end
    
    if ENV['SYSTEM'] == "live"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://test.jobeline.com/de-de/'
        when (/at/) then 'http://test.jobeline.com/at-de/'
        when (/ch/) then 'http://www.jobeline.com/ch-de/'
        when (/it/) then 'http://www.jobeline.com/it-it/'
        when (/fr/) then 'http://www.jobeline.com/fr-fr/'
        when (/no/) then 'http://www.jobeline.com/no-no/'
        when (/se/) then 'http://www.jobeline.com/se-se/'
        when (/nl/) then 'http://www.jobeline.com/nl-nl/'
        when (/be/) then 'http://www.jobeline.com/be-fr/'
        when (/es/) then 'http://www.jobeline.com/es-es/'
      end
      @urlHttps = case ENV['COUNTRY']
        when (/de/) then 'http://test.jobeline.com/de-de/'
        when (/at/) then 'http://test.jobeline.com/at-de/'
        when (/ch/) then 'https://www.jobeline.com/ch-de/'
        when (/it/) then 'https://www.jobeline.com/it-it/'
        when (/fr/) then 'https://www.jobeline.com/fr-fr/'
        when (/no/) then 'https://www.jobeline.com/no-no/'
        when (/se/) then 'https://www.jobeline.com/se-se/'
        when (/nl/) then 'https://www.jobeline.com/nl-nl/'
        when (/be/) then 'https://www.jobeline.com/be-fr/'
        when (/es/) then 'https://www.jobeline.com/es-es/'
      end
      @urlBackend = 'http://test.jobeline.com/'
    end
    @url_checkout_confirm = "checkout" 
    @url_add_comand = 'direktbestellen'
    @baby_steps = true
  end
end