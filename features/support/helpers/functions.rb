# Here are all ruby-functions for support
module MyFunctions
  # close_popup(css_path, timeInSek) waits a defined time for an given path of a closebutton and click it
  def close_popup(popup_close_button_path, expected_time)
    Capybara.default_wait_time = expected_time
    begin
      page.find(popup_close_button_path)
      popup_window = page.driver.browser.window_handles.last
      page.driver.browser.switch_to.window(popup_window)
      puts "closed popup"
      popup_close_button = page.find(popup_close_button_path)
      popup_close_button.click
    rescue => e
      puts "     No Popup appears within excepted time: \033[47m#{e.class}\033[0m\n"
    end
  end
  
  #disable all css elements
  def disable_css
    begin
      jsDisStyle=jsfunctions.disableStylesheet
      page.driver.browser.execute_script(jsDisStyle)
      puts "> disable all styleSheets"
    rescue
      puts "           > can not disable_css"
    end
  end  
  
  def refreshPage
    jsReload=jsfunctions.refreshPage
    page.driver.browser.execute_script(jsReload)
  end
  
  #display:none for navigation
  def block_navi()
    #check if element is class or id
      page.driver.browser.execute_script("
        function blockMainNavi()
        {
          var sheet = document.createElement('style');
          sheet.innerHTML = '.navigation-main {display:none !important;}';
          document.body.appendChild(sheet);
        }
        blockMainNavi();
        ")
  end
  
  #display:none for given css element
  def block_css(csspath)
    #check if element is class or id
    catch_error_in_block{page.driver.browser.execute_script("document.querySelector('"+csspath+"').style.display = 'none'")}
  end
  
  #select value by text on dropdown-menu
  def form_set_dropdown(var_text, option_value, dropdown_path)
    puts "- set #{var_text}: #{option_value}"
    page.find("#{dropdown_path} option", :text => option_value).click
  end
  
  #check if a variable exists and set its value
  def form_set_value(page_part, var_text, variable, var_path)
    #var_value = article.variable
    #variable exists?
    if variable
      #set location
      begin
        page_part.find(var_path).set(variable)
        puts "- set #{var_text}: #{variable}"
      rescue Exception => e
        puts "\033[32m#{e.message}\033[0m\n"
        puts "form_set_value: status:failed"
      end
    else
      puts "#{var_text} is not available in #{ENV['COUNTRY']}"
    end
  end
  
  #check if all links go to the equal shop (of country)
  def look_for_string_in_array(array_source, string_content)
    check = Array.new
    array_source.each { |z| check << z.include?(string_content)}
    # if array_source include string_content
    check_value = check.all?{|x| x == true}
    if (check_value==true)
      puts "> All links include '#{string_content}'"
    else
      puts "All checked links: #{array_source}"
      raise ("Some links are bad!")
    end
  end
  
  def catch_error_in_block(&block)
    @counter_error = 0
    begin
      @counter_error++
      yield
    rescue Capybara::ElementNotFound => e
      puts "counter_error:"+counter_error
      write_to_file("ElementNotFound_src", page.html)
      puts "\033[35m#{e.inspect}\033[0m\n"
      puts "status:failed"
    rescue Exception => e
      puts "\033[35mcatch_error_in_block -> #{e.message} (35)\033[0m\n"
    end
  end
  
  def set_user_and_pass_string(user, pass)
    htaccess_part = "#{user}:#{pass}@"
    return htaccess_part
  end
  
  def modify_url(url, htaccess)
    if (ENV['SYSTEM'] == 'int')
      new_url = url.gsub("//", "//#{htaccess}")
      puts "set htaccess"
      return new_url
    else
      return url
    end
  end
  
  #convert string of country into ID (s_core_shops)
  def convert_countryname_to_shopId(string_country)
    id_country = 1
    case string_country
      when "Deutschland"
        puts "Germany"
        id_country = 1
      when "Österreich" 
        puts "Austria"
        id_country = 3
      when "Schweiz"
        puts "Switzerland"
        id_country = 4
      when "Italia"
        puts "Italy"
        id_country = 8
      when "France"
        puts "France"
        id_country = 6
      when "Norge"
        puts "Norway"
        id_country = 11
      when "Sverige"
        puts "Sweden"
        id_country = 7
      when "Nederland"
        puts "Nederland"
        id_country = 10
      when "Belgique"
        puts "Begium"
        id_country = 12
      when "Espana"
        puts "Spain"
        id_country = 9
    end
    return id_country
  end
  
  #convert string of country into ID (to s_core_countries): it is not possible to use for each shop because each shop have different ids
  def convert_countryname_to_countryid(string_country)
    id_country = 2
    case string_country
      when "Deutschland"
        puts "Germany"
        id_country = 2
      when "Österreich" 
        puts "Austria"
        id_country = 23
      when "Schweiz"
        puts "Switzerland"
        id_country = 26
      when "Italia"
        puts "Italy"
        id_country = 14
      when "France"
        puts "France"
        id_country = 9
      when "Norge"
        puts "Norway"
        id_country = 22
      when "Sverige"
        puts "Sweden"
        id_country = 25
      when "Nederland"
        puts "Nederland"
        id_country = 21
      when "Belgique"
        puts "Begium"
        id_country = 5
      when "Espana"
        puts "Spain"
        id_country = 27
    end
    return id_country
  end
  
  # for debugging
  def puts_time_elapsed
    time_now = Time.now
    seconds = sprintf("%0.02f", (time_now - @start_time) % 60).to_i
    minutes = (((time_now - @start_time) / 60)).to_i
    puts ">> elapsed time -> #{minutes}:#{seconds}"
  end
  
  def write_to_existing_file(filename, content)  
    puts "file:#{@file}"
    @file = File.new("#{filename}.txt")
    puts ("status:pending")
    #puts "existing_error:#{§existing_error}"
    #open("#{filename}.txt", 'a') { |f|
    #  f.puts content
    #  @test_lap = 1
    #  puts "Test_lap:#{@test_lap}"
    #}
    puts ("written to existing #{filename}.txt")
  end
  
  #search in whole htmlcode for an other value similar like path
  def search_path_in_whole_html(path, html)
    path_output = ''
    path_searchterm = path
    output_string = "no_path"
    if (path.include?('match'))
      puts ">#{path}< is a Regex, so skip this"
    else
      if ( path_searchterm.include?("#") || path_searchterm.include?(".") )     
        path_searchterm_identifier = path_searchterm.scan(/[#|.]/)
        path_searchterm_without_number_and_identifier = path_searchterm.gsub(/[#|.]*[0-9]*/, "")
        content = html
        searchterm_in_content = content.scan(/#{path_searchterm_without_number_and_identifier}[0-9]*/)
        searchterm_in_content.uniq!
        path_output = "#{path_searchterm_identifier}#{searchterm_in_content}"
        output_string = path_output.to_s.gsub(/\"/, '\'').gsub(/[\[\]]/, '').gsub(/'/, "")
      else
        output_string = path
      end
    end
    puts "OUTPUT:#{output_string}"
    return output_string
  end
  
  def is_url_valid(url)
    url_regexp = /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
    url =~ url_regexp ? true : false
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
    url ||= page.current_url
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
      find_secure_counter <= 2 ? retry : raise
    rescue Selenium::WebDriver::Error::UnhandledAlertError
      puts "\033[35m#{e.inspect}\033[0m\n"    
      sleep 1
      puts "find_secure"
      puts "Failed to visit #{current_url}, retry #{find_secure_counter}"
      find_secure_counter <= 2 ? retry : raise
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
    url ||= page.current_url
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
      # if (html.include?('match'))
      #   puts "I can not execute this function because my given path is #{path}"
      # else
        path_to_search = search_path_in_whole_html(path, string)
      # end
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
      if (ENV['COUNTRY']=='de')
        block_css('.dpe-shopwide > .dig-pub') 
      end
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
