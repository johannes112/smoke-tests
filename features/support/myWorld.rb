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
      write_to_new_file("ElementNotFound_src", string)
      puts "\033[35mfind_secure\033[0m\n"
      puts "\033[35m#{e.inspect}\033[0m\n"
    end
  end
    
  def write_to_new_file(filename, content)  
    open("#{filename}.txt", 'w') { |f|
      f.puts content
    }
    puts ("written to #{filename}.txt")
  end
  
  def write_to_existing_file(filename, content)  
    #puts "file:#{@file}"
    if File.exists?(filename+'.txt')
      open("#{filename}.txt", 'a') { |f|
      f.puts content
      }
    else  
      @file ||= File.new("#{filename}.txt", 'w')
      open(@file, 'a'){ |f|
      f.puts content
      }
    end
    puts ("written to existing #{filename}.txt")
  end
  
  def write_to_file(*args)
    case args.size
    when 2
      write_to_new_file(*args)
    when 3
      write_to_existing_file(*args)
    end
  end 
  
end


World(MyWorld)