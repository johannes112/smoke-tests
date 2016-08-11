#export
class Article
  attr_accessor :sub_category, :category, :sku, :amount, :name, :url_add_comand
  
  def initialize
    @sub_category = 'CUTLERY'
    @category = case ENV['COUNTRY']
      when (/.*/) then 'CUTLERY'
    end
    @sku = case ENV['COUNTRY']
      when (/.*/) then '22147'
    end
    @amount = case ENV['COUNTRY']
      when (/.*/) then 2
    end
    @name = case ENV['COUNTRY']
      when (/.*/) then 'Stockholm'
    end
    @url_add_comand = case ENV['COUNTRY']
      when (/.*/) then 'addArticle/sTargetAction'
    end
  end
end