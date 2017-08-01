module MyWorld
  require 'logger'
  
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
  
  def logger
    @logger ||= Logger.new(STDOUT)
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
  
  #check if url has changed
  def check_for_url_change(start_url)
  #check for success
  end_url = current_url
  expect(end_url).not_to eq(start_url),
     "Expect url of category but it was still #{end_url}"
  end
  
  # content
  def get_canonical(header)
    # get canonical url
    canonical_url = "xxx"
    canonical_link = header.all('link', :visible => false).map { |a| a['rel'] 
    if a['rel']=="canonical" 
      canonical_url = "#{a['href']}"
    end }
    return canonical_url
  end
  
  # get all alternate
  def get_alternate(header)
    alternate_url = "xxx"
    alternate_array = Array.new
    alternate_link = header.all('link', :visible => false).map { |a| 
    if a['rel']=="alternate"
      alternate_url = "#{a['href']}"
    end }
    alternate_array = alternate_link.compact
    return alternate_array
  end

  # get shopurl out of canonical
  def get_mainpart_of_url(whole_url)
    url = URI.parse(whole_url)
    return url.host
  end

end


World(MyWorld)