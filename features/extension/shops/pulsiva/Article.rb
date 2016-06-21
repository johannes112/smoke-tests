#pulsiva
class Article
  attr_accessor :sub_category, :category, :sku, :amount, :name, :color, :size, :packagingUnit, :deliveryState, :pricePerPiece, :packContent, :order_value_netto, :order_value_brutto, :vat, :shipping_costs
  
  def initialize
    @sub_category = 'Einzelbesteck'
    @category = case ENV['COUNTRY']
      when (/de/) then 'Besteck'
    end
    @sku = case ENV['COUNTRY']
      when (/de/) then '20040136'#without i!
    end
    @amount = case ENV['COUNTRY']
      when (/de/) then 2
    end
    #no umlauts
    @name = case ENV['COUNTRY']
      when (/de/) then 'Steakgabel'
    end
    @color = case ENV['COUNTRY']
      when (/de/) then 'Chrom'
    end
    @size = case ENV['COUNTRY']
      when (/de/) then '19.7 cm (L)'
    end
    @packagingUnit = case ENV['COUNTRY']
      when (/de/) then nil
    end
    @deliveryState = case ENV['COUNTRY']
      when (/de/) then nil
    end
    @pricePerPiece = case ENV['COUNTRY']
      when (/de/) then 0.85
    end
    @packContent = case ENV['COUNTRY']
      when (/de/) then 12
    end
    @shipping_costs = case ENV['COUNTRY']
      when (/.*/) then nil
    end
    @order_value_netto = case ENV['COUNTRY']
      when (/.*/) then 10.20
    end
    @order_value_brutto = case ENV['COUNTRY']
      when (/.*/) then nil
    end
    @vat = case ENV['COUNTRY']
      when (/.*/) then nil
    end
  end
end