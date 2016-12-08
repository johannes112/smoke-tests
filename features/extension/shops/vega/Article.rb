#vega
class Article
  attr_accessor :sub_category, :category, :category_language_changed, :productnumber, :sku, :amount, :name, :url_add_comand
  
  def initialize
    @sub_category = case ENV['COUNTRY']
      when (/de/) then 'Einzelbesteck'
      when (/at/) then 'Einzelbesteck'
      when (/ch/) then 'Einzelbesteck'
      when (/it/) then 'Posate singole'
      when (/fr/) then 'Couverts à l\'unité'
      when (/no/) then 'Vinglass'
      when (/se/) then 'Enskilda bestick'
      when (/nl/) then 'Los bestek'
      when (/be/) then 'Couverts à l\'unité'
      when (/es/) then 'Piezas sueltas'
    end
    @category = case ENV['COUNTRY']
      when (/de/) then 'Besteck'
      when (/at/) then 'Besteck'
      when (/ch/) then 'Besteck'
      when (/it/) then 'Posate'
      when (/fr/) then 'Couverts'
      when (/no/) then 'Glass'
      when (/se/) then 'Bestick'
      when (/nl/) then 'Bestek'
      when (/be/) then 'Couverts'
      when (/es/) then 'Cubiertos'
    end
    @category_language_changed = case ENV['COUNTRY']
      when (/ch/) then 'Couverts'
      when (/be/) then 'Bestek'
    end
    @productnumber = case ENV['COUNTRY']
      when (/de/) then '106743'#without i!
      when (/at/) then '106743'
      when (/ch/) then '106743'
      when (/it/) then '106743'
      when (/fr/) then '106743'
      when (/no/) then '106743'#other product
      when (/se/) then '106743'
      when (/nl/) then '106743'
      when (/be/) then '106743'
      when (/es/) then '106743'
    end
    @sku = case ENV['COUNTRY']
      when (/de/) then '10022469'#without i!
      when (/at/) then '10022469'
      when (/ch/) then '10022469'
      when (/it/) then '10022469'
      when (/fr/) then '10022469'
      when (/no/) then '20060940'#other product
      when (/se/) then '10022469'
      when (/nl/) then '10022469'
      when (/be/) then '10022469'
      when (/es/) then '10022469'
    end
    @amount = case ENV['COUNTRY']
      when (/de/) then 2
      when (/at/) then 2
      when (/ch/) then 2
      when (/it/) then 2
      when (/fr/) then 2
      when (/no/) then 2
      when (/se/) then 2
      when (/nl/) then 2
      when (/be/) then 2
      when (/es/) then 2
    end
    #no umlauts
    @name = case ENV['COUNTRY'] 
      when (/de/) then 'Steakgabel'
      when (/at/) then 'Steakgabel'
      when (/ch/) then 'Steakgabel'
      when (/it/) then 'FORCHETTA BISTECCA'
      when (/fr/) then 'Fourchette'
      when (/no/) then 'BOUQUET'
      when (/se/) then 'GRILLGAFFEL'
      when (/nl/) then 'STEAKVORK'
      when (/be/) then 'Fourchette'
      when (/es/) then 'TENEDOR PARA CARNE'
    end
    @url_add_comand = case ENV['COUNTRY']
      when (/de/) then 'EMGroupDirectOrder'
      when (/at/) then 'EMGroupDirectOrder'
      when (/ch/) then 'EMGroupDirectOrder'
      when (/it/) then 'acquistato'
      when (/fr/) then 'EMGroupDirectOrder'
      when (/no/) then 'EMGroupDirectOrder'
      when (/se/) then 'EMGroupDirectOrder'
      when (/nl/) then 'EMGroupDirectOrder'
      when (/be/) then 'EMGroupDirectOrder'
      when (/es/) then 'EMGroupDirectOrder'
    end
  end
end