#chefworks
class Article
  attr_accessor :category, :sub_category, :sku, :amount, :name
  def initialize
    @sku = 'CBCCWHTXS'
    @amount = 2
    @category = 'Kochjacken'
    @sub_category = 'Kochjacken'
    @name = 'Colmar'
  end
end