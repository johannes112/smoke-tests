class Article
  attr_accessor :category, :sku, :amount, :name, :color, :size, :packagingUnit, :deliveryState, :pricePerPiece, :packContent, :order_value_netto, :order_value_brutto, :vat, :shipping_costs
  
  def initialize
    @sku = case ENV['COUNTRY']
      when 'export' then '21782'
    end
    @amount = case ENV['COUNTRY']
      when 'export' then 2
    end
    @name = case ENV['COUNTRY']
      when 'export' then 'Salad cutlery Fortuna'
    end
    @color = case ENV['COUNTRY']
      when 'export' then nil
    end
    @size = case ENV['COUNTRY']
      when 'export' then 'BxTxH=45x45x45 cm'
    end
    @packagingUnit = case ENV['COUNTRY']
      when 'export' then 'Unit'
    end
    @deliveryState = case ENV['COUNTRY']
      when 'export' then 'in stock'
    end
    @pricePerPiece = case ENV['COUNTRY']
      when 'export' then 1.40
    end
    @packContent = case ENV['COUNTRY']
      when 'export' then 2
    end
    @shipping_costs = case ENV['COUNTRY']
      when 'export' then nil
    end
    @order_value_netto = case ENV['COUNTRY']
      when 'export' then nil
    end
    @order_value_brutto = case ENV['COUNTRY']
      when 'export' then nil
    end
    @vat = case ENV['COUNTRY']
      when 'lu' then nil
    end
  end
end