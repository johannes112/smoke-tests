module MyWorld
  require 'logger'
 
  def websitebasics
    @websitebasics ||= Websitebasics.new
  end
  
  def search
    @search ||= Search.new
  end

  def directorder
    @directorder ||= Directorder.new
  end
  
  def productcart
    @productcart ||= Productcart.new
  end

  def productpage
    @productpage ||= Productpage.new
  end

  def account
    @account ||= Account.new
  end

  def checkout
    @checkout ||= Checkout.new
  end

  def url_functions
    @url_functions ||=UrlFunctions.new
  end
  
  def shopware
    @shopware ||=ShopwareApi.new
  end
  
  def csspathes
    @csspathes ||= Csspathes.new
  end
  
  def jsfunctions
    @jsfunctions ||= Jsfunctions.new
  end

  def settings
    @settings ||= Settings.new
  end
  
  def article
  	@article ||= Article.new
  end
  
  def user
    @user ||= User.new
  end
  
  def logger
    @logger ||= Logger.new(STDOUT)
  end

end

World(MyWorld)
World(MyFunctions)