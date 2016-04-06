class Article
  attr_accessor :category, :sku, :amount, :name, :color, :size, :packagingUnit, :deliveryState, :pricePerPiece, :packContent, :order_value_netto, :order_value_brutto, :vat, :shipping_costs
  def initialize
    @sku = sku
    @amount = 2
    @name = 'Kochjacke Garda'
    @color = 'weiss'
    @size = 'XS'
    @packagingUnit = nil
    @deliveryState = '10 - 12 Werktage'
    @pricePerPiece = "70,00" 
    @packContent = nil
    @shipping_costs = nil
    @order_value_netto = nil
    @order_value_brutto = nil
    @vat = nil
  end
end