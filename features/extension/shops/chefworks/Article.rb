#chefworks
class Article
  attr_accessor :category, :sub_category, :sku, :amount, :name, :productnumber
  def initialize
    @sku = 'CBCCWHTXS'
    @amount = 2
    @category = 'Kochjacken'
    @sub_category = 'Kochjacken'
    @name = 'Colmar'
    @productnumber = @name #productnumber do not exist for chefworks
  end
end