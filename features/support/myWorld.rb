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
  
  # find_secure: workaround -> in ruby overlaoding functions are not possible
  # warning: 
  #         do not use .page in front of this function
  #         do not use this function if there is the attribut ':visible'
  #         do not use this function if there is a specific element of the page given to find
  def find_secure(*args)
    #puts "find_secure:#{args.size}"
    if args.size == 1
      #puts "find_secure_with_one_arg:#{args}"
      element = find_secure_with_one_arg(*args)
    elsif args.size == 2
      #puts "find_secure_with_two_args:#{args[0]}"
      element = find_secure_with_two_args(*args)
    else
      puts "Error there are too much or less args"
    end
    return element
  end

# find: catch Errors 
  def find_secure_with_one_arg(path)
    path_to_search = path
    find_secure_counter ||= 0
    found = ''
    begin
      find_secure_counter = find_secure_counter + 1
      found = page.find(path_to_search)
    rescue Capybara::ElementNotFound => e
      #wrong path
      puts "\033[35m#{e.inspect}\033[0m\n"    
      # search for similar path and rerun with new path given of function
      find_secure_counter < 2 ? retry : raise
    rescue Net::ReadTimeout => e
      puts "\033[35m#{e.inspect}\033[0m\n"    
      sleep 1
      puts "find_secure_with_one_arg"
      puts "visit #{url} again"
      visit(url)
      Capybara.default_max_wait_time = 20
      if current_url
        puts "Failed to visit #{current_url}, retry #{find_secure_counter}"
      else
        puts "no URL IS Defined"
      end
      find_secure_counter <= 3 ? retry : raise
    rescue Selenium::WebDriver::Error::UnhandledAlertError
      puts "\033[35m#{e.inspect}\033[0m\n"    
      sleep 1
      puts "find_secure"
      puts "Failed to visit #{current_url}, retry #{find_secure_counter}"
      find_secure_counter <= 3 ? retry : raise
    rescue Exception => e
      puts "#{e}"
      puts "\033[35m#{e.inspect}\033[0m\n"    
      raise "UNKNOWN ERROR in find_secure_with_one_arg"
    end
    return found
  end

  # find: catch Errors 
  def find_secure_with_two_args(path, string)
    path_to_search = path
    find_secure_counter ||= 0
    found = ''
    begin
      find_secure_counter = find_secure_counter + 1
      found = page.find(path_to_search)
    rescue Capybara::Ambiguous => e
      #more than one matches
      puts "\033[35m#{e.inspect}\033[0m\n"  
      found = page.find(path, match: :first)
    rescue Capybara::ElementNotFound => e
      #wrong path
      puts "\033[35m#{e.inspect}\033[0m\n"    
      write_to_new_file("ElementNotFound_src", string)
      # search for similar path and rerun with new path given of function
      path_to_search = search_path_in_whole_html(path, string)
      puts "\033[35m#instead of #{path} i have to look for #{path_to_search}\033[0m\n"    
      find_secure_counter < 2 ? retry : raise
    rescue Net::ReadTimeout => e
      puts "\033[35m#{e.inspect}\033[0m\n"    
      sleep 1
      puts "find_secure_with_two_args"
      puts "visit #{url} again"
      visit(url)
      Capybara.default_max_wait_time = 20
      if current_url
        puts "Failed to find css, retry #{find_secure_counter}"
      else
        puts "no URL IS Defined"
      end
      find_secure_counter <= 2 ? retry : raise
    rescue UnhandledAlertException => e
      puts "#{e}"
      puts "\033[35m#{e.inspect}\033[0m\n"    
      raise "Uuhandled modal Dialog"
    rescue Exception => e
      puts "#{e}"
      puts "\033[35m#{e.inspect}\033[0m\n"    
      raise "UNKNOWN ERROR in find_secure_with_two_args"
    end
    return found
  end

  # visit: catch Errors 
  def visit_secure(url)
    visit_secure_counter = 0
    begin
      visit_secure_counter += 1
      visit(url)
      if (ENV['SYSTEM']=='live')
        url_functions.set_url_and_get_page(url)
      end
    rescue Net::HTTP::Persistent::Error => e
      puts "\033[35m#{e.inspect}\033[0m\n"    
      raise "Connection to #{url} failed"
    rescue Net::HTTPGatewayTimeOut => e
      puts "\033[35m#{e.inspect}\033[0m\n"    
      # do it threetimes
      Capybara.default_max_wait_time = 20
      visit_secure_counter <= 2 ? retry : raise
    rescue Net::ReadTimeout => e
      puts "\033[35m#{e.inspect}\033[0m\n"    
      sleep 1
      puts "visit #{url} again"
      visit(url)
      Capybara.default_max_wait_time = 20
      visit_secure_counter <= 2 ? retry : raise
    rescue Exception => e
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