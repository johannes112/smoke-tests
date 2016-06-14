#chefworks
class Article
  attr_accessor :category, :sub_category, :sku, :amount, :name, :color, :size, :packagingUnit, :deliveryState, :pricePerPiece, :packContent, :order_value_netto, :order_value_brutto, :vat, :shipping_costs
  def initialize
    @sku = 'CBCCWHTXS'
    @amount = 2
    @category = 'Kochjacken'
    @sub_category = 'Kochjacken'
    @name = 'Colmar'
    @color = 'weiss'
    @size = 'XS'
    @packagingUnit = nil
    @deliveryState = '10 - 12 Werktage'
    @pricePerPiece = "45,90" 
    @packContent = nil
    @shipping_costs = nil
    @order_value_netto = nil
    @order_value_brutto = nil
    @vat = nil
  end
end