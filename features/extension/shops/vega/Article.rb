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
      when (/se/) then 'Bestickdelar'
      when (/nl/) then 'Los bestek'
      when (/be/) then 'Couverts à l\'unité'
      when (/es/) then 'Cubiertos sueltos'
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
      when (/de/) then '106098'#without i!
      when (/at/) then '106098'
      when (/ch/) then '106098'
      when (/it/) then '106098'
      when (/fr/) then '106098'
      when (/no/) then '106098'#other product
      when (/se/) then '106098'
      when (/nl/) then '106098'
      when (/be/) then '106098'
      when (/es/) then '106098'
    end
    @sku = case ENV['COUNTRY']
      when (/de/) then '10030247'#without i!
      when (/at/) then '10030247'
      when (/ch/) then '10030247'
      when (/it/) then '10030247'
      when (/fr/) then '10030247'
      when (/no/) then '10030247'
      when (/se/) then '10030247'
      when (/nl/) then '10030247'
      when (/be/) then '10030247'
      when (/es/) then '10030247'
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
      when (/de/) then 'Kuchengabel Destino'
      when (/at/) then 'Kuchengabel Destino'
      when (/ch/) then 'Kuchengabel Destino'
      when (/it/) then 'Forchetta dolce Destino'
      when (/fr/) then 'Fourchette à gâteau Eméo'
      when (/no/) then 'Kakegaffel Destino'
      when (/se/) then 'Tårtgaffel Destino'
      when (/nl/) then 'Taartvork Destino'
      when (/be/) then 'Fourchette à gâteau Eméo'
      when (/es/) then 'Tenedor para pastel Destino'
    end
    @url_add_comand = case ENV['COUNTRY']
      when (/de/) then 'direktbestellen'
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