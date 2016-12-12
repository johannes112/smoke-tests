#hotelwaesche
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
      when (/de/) then '101291'
      when (/at/) then '101291'
      when (/ch/) then '101291'
    end
    @sku = case ENV['COUNTRY']
      when (/de/) then '10088338'
      when (/at/) then '10088338'
      when (/ch/) then '10088338'
    end
    @amount = case ENV['COUNTRY']
      when (/de/) then 2
      when (/at/) then 2
      when (/ch/) then 2
    end
    @name = case ENV['COUNTRY'] 
      when (/de/) then 'HANDTUCH ROSAS'
      when (/at/) then 'HANDTUCH ROSAS'
      when (/ch/) then 'HANDTUCH ROSAS'
    end
    @url_add_comand = case ENV['COUNTRY']
      when (/de/) then 'EMGroupDirectOrder'
      when (/at/) then 'EMGroupDirectOrder'
      when (/ch/) then 'EMGroupDirectOrder'
    end
  end
end