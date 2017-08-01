# Here are all ruby-functions for support
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
  catch_error{page.driver.browser.execute_script("document.querySelector('"+csspath+"').style.display = 'none'")}
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
      puts "\033[35m#{e.message}\033[0m\n"
      puts "status:failed"
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

def catch_error(&block)
  begin
    yield
  rescue Exception => e
    puts "catched error"
    puts "\033[35m#{e.message} (35)\033[0m\n"
  rescue Capybara::ElementNotFound => e
    write_to_file("ElementNotFound_src", page.html)
    puts "\033[35m#{e.inspect}\033[0m\n"
    puts "status:failed"
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