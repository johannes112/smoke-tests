#hwjobeline
class Article
  attr_accessor :sub_category, :category, :category_language_changed, :productnumber, :sku, :amount, :name, :url_add_comand
  
  def initialize
    @sub_category = case ENV['COUNTRY']
      when (/de/) then 'Kochhosen'
      when (/at/) then 'Kochhosen'
      when (/ch/) then 'Kochhosen'
    end
    @category = case ENV['COUNTRY']
      when (/de/) then 'Kochbekleidung'
      when (/at/) then 'Kochbekleidung'
      when (/ch/) then 'Kochbekleidung'
    end
    @category_language_changed = case ENV['COUNTRY']
      when (/ch/) then 'Tenues de cuisine'
      when (/be/) then nil
    end
    @productnumber = case ENV['COUNTRY']
      when (/de/) then '100710'
      when (/at/) then '100710'
      when (/ch/) then '100710'
    end
    @sku = case ENV['COUNTRY']
      when (/de/) then '10041838'#without i!
      when (/at/) then '10041838'
      when (/ch/) then '10041838'
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
      when (/de/) then 'HERRENKOCHHOSE NICK'
      when (/at/) then 'HERRENKOcHHOSE NICK'
      when (/ch/) then 'HERRENKOcHHOSE NICK'
    end
    @url_add_comand = case ENV['COUNTRY']
      when (/de/) then 'EMGroupDirectOrder'
      when (/at/) then 'EMGroupDirectOrder'
      when (/ch/) then 'EMGroupDirectOrder'
    end
  end
end