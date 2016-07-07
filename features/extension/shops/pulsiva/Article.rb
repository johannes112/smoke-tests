#pulsiva
class Article
  attr_accessor :sub_category, :category, :sku, :amount, :name, :color, :size, :packagingUnit, :deliveryState, :pricePerPiece, :packContent, :order_value_netto, :order_value_brutto, :vat, :shipping_costs, :url_add_comand
  
  def initialize
    @sub_category = case ENV['COUNTRY']
      when (/de/) then 'Einzelbesteck'
      when (/at/) then 'Einzelbesteck'
    end
    @category = case ENV['COUNTRY']
      when (/de/) then 'Besteck'
      when (/at/) then 'Besteck'
    end
    @sku = case ENV['COUNTRY']
      when (/de/) then '20040136'#without i!
      when (/at/) then '20040136'#without i!
    end
    @amount = case ENV['COUNTRY']
      when (/de/) then 2
      when (/at/) then 2
    end
    #no umlauts
    @name = case ENV['COUNTRY']
      when (/de/) then 'Steakgabel'
      when (/at/) then 'Steakgabel'
    end
    @color = case ENV['COUNTRY']
      when (/de/) then 'Chrom'
      when (/at/) then 'Chrom'
    end
    @size = case ENV['COUNTRY']
      when (/de/) then '19.7 cm (L)'
      when (/at/) then '19.7 cm (L)'
    end
    @packagingUnit = case ENV['COUNTRY']
      when (/de/) then nil
      when (/at/) then nil
    end
    @deliveryState = case ENV['COUNTRY']
      when (/de/) then nil
      when (/at/) then nil
    end
    @pricePerPiece = case ENV['COUNTRY']
      when (/de/) then 0.85
      when (/at/) then 0.95
    end
    @packContent = case ENV['COUNTRY']
      when (/de/) then 12
      when (/at/) then 12
    end
    @shipping_costs = case ENV['COUNTRY']
      when (/de/) then nil
      when (/at/) then nil
    end
    @order_value_netto = case ENV['COUNTRY']
      when (/de/) then 10.20
      when (/at/) then 11.40
    end
    @order_value_brutto = case ENV['COUNTRY']
      when (/de/) then nil
      when (/at/) then nil
    end
    @vat = case ENV['COUNTRY']
      when (/de/) then nil
      when (/at/) then nil
    end
    @url_add_comand = case ENV['COUNTRY']
      when (/de/) then 'direktbestellen'
      when (/at/) then 'EMGroupDirectOrder'
    end
  end
end