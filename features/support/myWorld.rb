module MyWorld
  require 'logger'

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