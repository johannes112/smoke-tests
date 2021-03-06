#vega
class Settings
  attr_accessor :url_checkout_confirm, :url_add_comand, :urlHttp, :urlHttps, :urlBackend, :baby_steps
  
  def initialize
    if ENV['SYSTEM'] == "int"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://int.vega-direct.com/de-de/'
        when (/at/) then 'http://int.vega-direct.com/at-de/'
        when (/ch/) then 'http://int.vega-direct.com/ch-de/'
        when (/ch-fr/) then 'http://int.vega-direct.com/ch-fr/'
        when (/it/) then 'http://int.vega-direct.com/it-it/'
        when (/fr/) then 'http://int.vega-direct.com/fr-fr/'
        when (/no/) then 'http://int.vega-direct.com/no-no/'
        when (/se/) then 'http://int.vega-direct.com/se-se/'
        when (/nl/) then 'http://int.vega-direct.com/nl-nl/'
        when (/be/) then 'http://int.vega-direct.com/be-fr/'
        when (/es/) then 'http://int.vega-direct.com/es-es/'
        when (/en/) then 'http://int.vega-direct.com/en-us/'
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when (/de/) then 'http://int.vega-direct.com/de-de/'
        when (/at/) then 'http://int.vega-direct.com/at-de/'
        when (/ch/) then 'http://int.vega-direct.com/ch-de/'
        when (/ch-fr/) then 'http://int.vega-direct.com/ch-fr/'
        when (/it/) then 'http://int.vega-direct.com/it-it/'
        when (/fr/) then 'http://int.vega-direct.com/fr-fr/'
        when (/no/) then 'http://int.vega-direct.com/no-no/'
        when (/se/) then 'http://int.vega-direct.com/se-se/'
        when (/nl/) then 'http://int.vega-direct.com/nl-nl/'
        when (/be/) then 'http://int.vega-direct.com/be-fr/'
        when (/es/) then 'http://int.vega-direct.com/es-es/'
        when (/en/) then 'http://int.vega-direct.com/en-us/'
      end
      @urlBackend = 'http://int.vega-direct.com/'
    end
    
    if ENV['SYSTEM'] == "live"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://www.vega-direct.com/de-de/'
        when (/at/) then 'http://www.vega-direct.com/at-de/'
        when (/ch/) then 'http://www.vega-direct.com/ch-de/'
        when (/ch-fr/) then 'http://www.vega-direct.com/ch-fr/'
        when (/it/) then 'http://www.vega-direct.com/it-it/'
        when (/fr/) then 'http://www.vega-direct.com/fr-fr/'
        when (/no/) then 'http://www.vega-direct.com/no-no/'
        when (/se/) then 'http://www.vega-direct.com/se-se/'
        when (/nl/) then 'http://www.vega-direct.com/nl-nl/'
        when (/be/) then 'http://www.vega-direct.com/be-fr/'
        when (/es/) then 'http://www.vega-direct.com/es-es/'
        when (/en/) then 'http://www.vega-direct.com/en-us/'
      end
      @urlHttps = case ENV['COUNTRY']
        when (/de/) then 'https://www.vega-direct.com/de-de/'
        when (/at/) then 'https://www.vega-direct.com/at-de/'
        when (/ch/) then 'https://www.vega-direct.com/ch-de/'
        when (/ch-fr/) then 'https://www.vega-direct.com/ch-fr/'
        when (/it/) then 'https://www.vega-direct.com/it-it/'
        when (/fr/) then 'https://www.vega-direct.com/fr-fr/'
        when (/no/) then 'https://www.vega-direct.com/no-no/'
        when (/se/) then 'https://www.vega-direct.com/se-se/'
        when (/nl/) then 'https://www.vega-direct.com/nl-nl/'
        when (/be/) then 'https://www.vega-direct.com/be-fr/'
        when (/es/) then 'https://www.vega-direct.com/es-es/'
        when (/en/) then 'https://www.vega-direct.com/en-us/'
      end
      @urlBackend = 'https://www.vega-direct.com/'
    end
    if ENV['SYSTEM'] == "stage"
      @urlHttp = case ENV['COUNTRY']
        when (/de/) then 'http://stage.vega-direct.com/de-de/'
        # when (/at/) then 'http://int.vega-direct.com/at-de/'
        # when (/ch/) then 'http://int.vega-direct.com/ch-de/'
        # when (/ch-fr/) then 'http://int.vega-direct.com/ch-fr/'
        # when (/it/) then 'http://int.vega-direct.com/it-it/'
        # when (/fr/) then 'http://int.vega-direct.com/fr-fr/'
        # when (/no/) then 'http://int.vega-direct.com/no-no/'
        # when (/se/) then 'http://int.vega-direct.com/se-se/'
        # when (/nl/) then 'http://int.vega-direct.com/nl-nl/'
        # when (/be/) then 'http://int.vega-direct.com/be-fr/'
        # when (/es/) then 'http://int.vega-direct.com/es-es/'
        # when (/en/) then 'http://int.vega-direct.com/en-us/'
      end
      @urlHttps = case ENV['COUNTRY']#Important:write 's
        when (/de/) then 'http://stage.vega-direct.com/de-de/'
        # when (/at/) then 'http://int.vega-direct.com/at-de/'
        # when (/ch/) then 'http://int.vega-direct.com/ch-de/'
        # when (/ch-fr/) then 'http://int.vega-direct.com/ch-fr/'
        # when (/it/) then 'http://int.vega-direct.com/it-it/'
        # when (/fr/) then 'http://int.vega-direct.com/fr-fr/'
        # when (/no/) then 'http://int.vega-direct.com/no-no/'
        # when (/se/) then 'http://int.vega-direct.com/se-se/'
        # when (/nl/) then 'http://int.vega-direct.com/nl-nl/'
        # when (/be/) then 'http://int.vega-direct.com/be-fr/'
        # when (/es/) then 'http://int.vega-direct.com/es-es/'
        # when (/en/) then 'http://int.vega-direct.com/en-us/'
      end
      # @urlBackend = 'http://int.vega-direct.com/'
    end
    @baby_steps = true
  end
end