#vega
class Article
  attr_accessor :sub_category, :category, :category_language_changed, :productnumber, :sku, :amount, :name, :url_add_comand
  
  def initialize
    @sub_category = case ENV['COUNTRY']
      when (/de/) then 'Handtuch'
      when (/at/) then 'Handtuch'
      when (/ch/) then 'Handtuch'
    end
    @category = case ENV['COUNTRY']
      when (/de/) then 'Frottier & Bad'
      when (/at/) then 'Frottier & Bad'
      when (/ch/) then 'Frottier & Bad'
    end
    @category_language_changed = case ENV['COUNTRY']
      when (/ch/) then 'Couverts'
      when (/be/) then 'Bestek'
    end
    @productnumber = case ENV['COUNTRY']
      when (/de/) then '101897'#without i!
      when (/at/) then '101897'
      when (/ch/) then '101897'
    end
    @sku = case ENV['COUNTRY']
      when (/de/) then '10065771'#without i!
      when (/at/) then '10065771'
      when (/ch/) then '10065771'
    end
    @amount = case ENV['COUNTRY']
      when (/de/) then 2
      when (/at/) then 2
      when (/ch/) then 2
    end
    #no umlauts
    @name = case ENV['COUNTRY'] 
      when (/de/) then 'HANDTUCH TRÄUMCHEN'
      when (/at/) then 'HANDTUCH TRÄUMCHEN'
      when (/ch/) then 'HANDTUCH TRÄUMCHEN'
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