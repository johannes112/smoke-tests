# envShop = ENV['COUNTRY']
# puts envShop

# if envShop==(/.*/)
#   filename='export.rb'
#   puts "require_relative:#{filename}"
#   require_relative filename
#   #filename.gsub!(/^[a-z]/) {|word| word.upcase()}
#   #puts "polymorph: #{filename}"
#   #class_name = filename
#   class_name_c = filename.slice(0,1).capitalize + filename.slice(1)
#   puts "class_name_c:#{class_name_c}"
# else
#   filename='TestVar2.rb'
#   puts 'shit'
# end
# puts "outername:#{class_name_c}"

class Article
  attr_accessor :category, :sku, :amount, :name, :color, :size, :packagingUnit, :deliveryState, :pricePerPiece, :packContent, :order_value_netto, :order_value_brutto, :vat, :shipping_costs
  
  def initialize
    @sku = case ENV['COUNTRY']
      when (/.*/) then '21782'
    end
    @amount = case ENV['COUNTRY']
      when (/.*/) then 2
    end
    @name = case ENV['COUNTRY']
      when (/.*/) then 'Salad cutlery Fortuna'
    end
    @color = case ENV['COUNTRY']
      when (/.*/) then nil
    end
    @size = case ENV['COUNTRY']
      when (/.*/) then 'BxTxH=45x45x45 cm'
    end
    @packagingUnit = case ENV['COUNTRY']
      when (/.*/) then 'Unit'
    end
    @deliveryState = case ENV['COUNTRY']
      when (/.*/) then 'in stock'
    end
    @pricePerPiece = case ENV['COUNTRY']
      when (/.*/) then 1.40
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