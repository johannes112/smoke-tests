#vega-direct
class Settings
  attr_accessor :url_checkout_confirm, :url_add_comand, :urlHttp, :urlHttps, :urlBackend, :baby_steps
  
  def initialize
    if ENV['SYSTEM'] == "int"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://int.vega-direct.com/'
        when (/ch/) then 'http://int.vega-direct.com/at-de/'
        when (/at/) then 'http://int.vega-direct.com/ch-de/'
        when (/it/) then 'http://int.vega-direct.com/it-it/'
        when (/fr/) then 'http://int.vega-direct.com/fr-fr/'
        when (/no/) then 'http://int.vega-direct.com/no-no/'
        when (/se/) then 'http://int.vega-direct.com/se-se/'
        when (/nl/) then 'http://int.vega-direct.com/nl-nl/'
        when (/be/) then 'http://int.vega-direct.com/be-fr/'
        when (/es/) then 'http://int.vega-direct.com/es-es/'
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when (/de/) then 'https://int.vega-direct.com/'
        when (/at/) then 'https://int.vega-direct.com/at-de/'
        when (/ch/) then 'https://int.vega-direct.com/ch-de/'
        when (/it/) then 'https://int.vega-direct.com/it-it/'
        when (/fr/) then 'https://int.vega-direct.com/fr-fr/'
        when (/no/) then 'https://int.vega-direct.com/no-no/'
        when (/se/) then 'https://int.vega-direct.com/se-se/'
        when (/nl/) then 'https://int.vega-direct.com/nl-nl/'
        when (/be/) then 'https://int.vega-direct.com/be-fr/'
        when (/es/) then 'https://int.vega-direct.com/es-es/'
        end
      @urlBackend = 'https://int.vega-direct.com/'
    end
    
    if ENV['SYSTEM'] == "live"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://test.vega-direct.com/'
        when (/at/) then 'http://www.vega-direct.com/at-de/'
        when (/ch/) then 'http://www.vega-direct.com/ch-de/'
        when (/it/) then 'http://www.vega-direct.com/it-it/'
        when (/fr/) then 'http://www.vega-direct.com/fr-fr/'
        when (/no/) then 'http://www.vega-direct.com/no-no/'
        when (/se/) then 'http://www.vega-direct.com/se-se/'
        when (/nl/) then 'http://www.vega-direct.com/nl-nl/'
        when (/be/) then 'http://www.vega-direct.com/be-fr/'
        when (/es/) then 'http://www.vega-direct.com/es-es/'
      end
      @urlHttps = case ENV['COUNTRY']
        when (/de/) then 'http://test.vega-direct.com/'
        when (/at/) then 'https://www.vega-direct.com/at-de/'
        when (/ch/) then 'https://www.vega-direct.com/ch-de/'
        when (/it/) then 'https://www.vega-direct.com/it-it/'
        when (/fr/) then 'https://www.vega-direct.com/fr-fr/'
        when (/no/) then 'https://www.vega-direct.com/no-no/'
        when (/se/) then 'https://www.vega-direct.com/se-se/'
        when (/nl/) then 'https://www.vega-direct.com/nl-nl/'
        when (/be/) then 'https://www.vega-direct.com/be-fr/'
        when (/es/) then 'https://www.vega-direct.com/es-es/'
      end
      @urlBackend = 'https://www.vega-direct.com/'
    end
    @url_checkout_confirm = "checkout/shippingPayment"
    @url_add_comand = 'direktbestellen'
    @baby_steps = true
  end
end