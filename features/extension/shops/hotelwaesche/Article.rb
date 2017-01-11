#hotelwaesche
class Article
  attr_accessor :sub_category, :category, :category_language_changed, :productnumber, :sku, :amount, :name, :url_add_comand
  
  def initialize
    @sub_category = case ENV['COUNTRY']
      when (/de/) then 'Badematten'
      when (/at/) then 'Badematten'
      when (/ch/) then 'Badematten'
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
      when (/de/) then '100898'
      when (/at/) then '100898'
      when (/ch/) then '100898'
    end
    @sku = case ENV['COUNTRY']
      when (/de/) then '10001015'
      when (/at/) then '10001015'
      when (/ch/) then '10001015'
    end
    @amount = case ENV['COUNTRY']
      when (/de/) then 2
      when (/at/) then 2
      when (/ch/) then 2
    end
    @name = case ENV['COUNTRY'] 
      when (/de/) then 'Badematte Boston'
      when (/at/) then 'Badematte Boston'
      when (/ch/) then 'Badematte Boston'
    end
    @url_add_comand = case ENV['COUNTRY']
      when (/de/) then 'EMGroupDirectOrder'
      when (/at/) then 'EMGroupDirectOrder'
      when (/ch/) then 'EMGroupDirectOrder'
    end
  end
end