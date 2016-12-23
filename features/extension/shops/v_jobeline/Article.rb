#v_jobeline
class Article
  attr_accessor :sub_category, :category, :category_language_changed, :productnumber, :sku, :amount, :name, :url_add_comand
  
  def initialize
    @sub_category = case ENV['COUNTRY']
      when (/de/) then 'Kochhosen'
      when (/at/) then 'Kochhosen'
      when (/ch/) then 'Kochhosen'
      when (/it/) then 'Posate singole'
      when (/fr/) then 'Couverts à l\'unité'
      when (/no/) then 'Vinglass'
      when (/se/) then 'Enskilda bestick'
      when (/nl/) then 'Los bestek'
      when (/be/) then 'Couverts à l\'unité'
      when (/es/) then 'Piezas sueltas'
    end
    @category = case ENV['COUNTRY']
      when (/de/) then 'Kochbekleidung'
      when (/at/) then 'Kochbekleidung'
      when (/ch/) then 'Kochbekleidung'
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
      when (/de/) then '110321'
      when (/at/) then '110321'
      when (/ch/) then '110321'
      when (/it/) then '104105'
      when (/fr/) then '104105'
      when (/no/) then '104065'#other product
      when (/se/) then '104105'
      when (/nl/) then '104105'
      when (/be/) then '104105'
      when (/es/) then '104105'
    end
    @sku = case ENV['COUNTRY']
      when (/de/) then '30000303'
      when (/at/) then '30000303'
      when (/ch/) then '30000303'
      when (/it/) then '20040136'
      when (/fr/) then '20040136'
      when (/no/) then '20060940'#other product
      when (/se/) then '20040136'
      when (/nl/) then '20040136'
      when (/be/) then '20040136'
      when (/es/) then '20040136'
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
      when (/de/) then 'KOCHHOSE FRANK'
      when (/at/) then 'KOCHHOSE FRANK'
      when (/ch/) then 'KOCHHOSE FRANK'
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