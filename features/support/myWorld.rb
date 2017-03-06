module MyWorld
  
  def url_functions
    @url_functions ||=UrlFunctions.new
  end
  
  def shopware
    @shopware ||=ShopwareApi.new()
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
  
  def printValue(sym, value)
    var_name  = sym.to_s
    #puts "var_name:#{var_name}"
    var_value = eval(var_name, value)
    puts "- set #{var_name} = #{var_value.inspect}"
  end
  
  def find_secure(path, string)
    begin
      page.find(path)
    rescue Capybara::ElementNotFound => e
      write_to_file("ElementNotFound_src", string)
      puts "\033[35mfind_secure\033[0m\n"
      puts "\033[35m#{e.inspect}\033[0m\n"
    end
  end
    
  def write_to_file(filename, content)  
    open("#{filename}.txt", 'w') { |f|
      f.puts content
    }
    puts ("written to #{filename}.txt")
  end
end


World(MyWorld)