module MyWorld

  def shopware
    @magento ||=ShopwareAPI.new(settings.urlBackend,ENV['SHOPWARE_USERNAME'],ENV['SHOPWARE_PASSWORD'])
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

  def printValue(sym, value)
    var_name  = sym.to_s
    #puts "var_name:#{var_name}"
    var_value = eval(var_name, value)
    puts "- set #{var_name} = #{var_value.inspect}"
  end
end

World(MyWorld)