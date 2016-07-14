#pulsiva
class Article
  attr_accessor :sub_category, :category, :sku, :amount, :name, :url_add_comand
  
  def initialize
    @sub_category = case ENV['COUNTRY']
      when (/de/) then 'Einzelbesteck'
      when (/at/) then 'Einzelbesteck'
      when (/ch/) then 'Einzelbesteck'
      when (/it/) then 'Posate singole'
      when (/fr/) then 'Couverts à l\'unité'
    end
    @category = case ENV['COUNTRY']
      when (/de/) then 'Besteck'
      when (/at/) then 'Besteck'
      when (/ch/) then 'Besteck'
      when (/it/) then 'Posate'
      when (/fr/) then 'Couverts'
    end
    @sku = case ENV['COUNTRY']
      when (/de/) then '20040136'#without i!
      when (/at/) then '20040136'
      when (/ch/) then '20040136'
      when (/it/) then '20040136'
      when (/fr/) then '20040136'
    end
    @amount = case ENV['COUNTRY']
      when (/de/) then 2
      when (/at/) then 2
      when (/ch/) then 2
      when (/it/) then 2
      when (/fr/) then 2
    end
    #no umlauts
    @name = case ENV['COUNTRY'] 
      when (/de/) then 'Steakgabel'
      when (/at/) then 'Steakgabel'
      when (/ch/) then 'Steakgabel'
      when (/it/) then 'FORCHETTA BISTECCA'
      when (/fr/) then 'Fourchette'
    end
    @url_add_comand = case ENV['COUNTRY']
      when (/de/) then 'direktbestellen'
      when (/at/) then 'EMGroupDirectOrder'
      when (/ch/) then 'EMGroupDirectOrder'
      when (/it/) then 'acquistato'
      when (/fr/) then 'EMGroupDirectOrder'
    end
  end
end