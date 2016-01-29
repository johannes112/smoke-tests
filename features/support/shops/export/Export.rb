class Export
  attr_accessor :lsku, :amount, :name, :color, :size, :packagingUnit, :deliveryState, :pricePerPiece, :packContent, :order_value_netto, :order_value_brutto, :vat, :shipping_costs
  
  def initialize
    @lsku = '21782'
    @amount = 2
    @name = 'Salad cutlery Fortuna'
    @color = nil
    @size = 'BxTxH=45x45x45 cm'
    @packagingUnit = 'Unit'
    @deliveryState = 'in stock'
    @pricePerPiece = 1.40
    @packContent = 2
    @shipping_costs = nil
    @order_value_netto = nil
    @order_value_brutto = nil
    @vat = nil
  end
end