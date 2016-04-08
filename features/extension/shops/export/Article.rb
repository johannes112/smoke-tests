#article
class Article
  attr_accessor :category, :sku, :amount, :name, :color, :size, :packagingUnit, :deliveryState, :pricePerPiece, :packContent, :order_value_netto, :order_value_brutto, :vat, :shipping_costs
  
  def initialize
    @category = case ENV['COUNTRY']
      when (/.*/) then 'CUTLERY'
    end
    @sku = case ENV['COUNTRY']
      when (/.*/) then '21782'
    end
    @amount = case ENV['COUNTRY']
      when (/.*/) then 2
    end
    @name = case ENV['COUNTRY']
      when (/.*/) then 'Fortuna'
    end
    @color = case ENV['COUNTRY']
      when (/.*/) then nil
    end
    @size = case ENV['COUNTRY']
      when (/.*/) then 'L=26,2 cm'
    end
    @packagingUnit = case ENV['COUNTRY']
      when (/.*/) then nil
    end
    @deliveryState = case ENV['COUNTRY']
      when (/.*/) then 'in stock'
    end
    @pricePerPiece = case ENV['COUNTRY']
      when (/.*/) then 1.99
    end
    @packContent = case ENV['COUNTRY']
      when (/.*/) then 2
    end
    @shipping_costs = case ENV['COUNTRY']
      when (/.*/) then nil
    end
    @order_value_netto = case ENV['COUNTRY']
      when (/.*/) then nil
    end
    @order_value_brutto = case ENV['COUNTRY']
      when (/.*/) then nil
    end
    @vat = case ENV['COUNTRY']
      when (/.*/) then nil
    end
  end
end