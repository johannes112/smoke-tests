module MyWorld
  require 'logger'

  def settings
    @settings ||= Settings.new
  end

  def article
  	@article ||= Article.new
  end

  def user
    @user ||= User.new
  end

  def csspathes_homepage
    @homepage ||= Csspathes_Homepage.new
  end

  def homepage
    return {:pathes => csspathes_homepage, :data => article}
  end

  def csspathes_productpage
    @productpage ||= Csspathes_Productpage.new
  end

  def productpage
    return {:pathes => csspathes_productpage, :data => article}
  end

  def url_functions
    @url_functions ||=UrlFunctions.new
  end

  def shopware
    @shopware ||=ShopwareApi.new
  end

  def jsfunctions
    @jsfunctions ||= Jsfunctions.new
  end

end

World(MyWorld)
World(MyFunctions)
