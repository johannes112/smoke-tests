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

#check if a variable exists and set its value
def setAtrributOfArticle(var_text, variable, var_path)
  #var_value = article.variable
  #variable exists?
  if variable
    #set location
    begin
      item = page.find(var_path)
      item_type = item.inspect
        #check for type (Element=input or eelement=select)
        if(item_type.include?"input")
          #set value
          item.set(variable)
          puts "- set #{var_text}: #{variable}"
          expect(item.value).to eq(variable),
            "Could not insert variable #{var_text} with #{variable}"
        elsif(item_type.include?"select")
          item.select(variable)
          puts "#{var_text}: #{variable}"
        else
          puts "Error Element isn't of type 'input' or 'select'"
        end
          rescue Exception => e
          puts "\033[35m#{e.message}\033[0m\n"
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
    raise ("Some links are bad!")
    puts "ERROR some links are wrong"
  end
end

#select value by text on dropdown-menu
def set_dropdown_value(var_text, option_value, dropdown_path)
  puts "- set #{var_text}: #{option_value}"
  page.find("#{dropdown_path} option", :text => option_value).click
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

#convert string of country into ID (to post with api-call)
def convert_countryname_to_id(string_country)
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
  puts id_country
end
