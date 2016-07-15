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
    page.driver.browser.execute_script("
      function blockCssElement()
      {
        if (matches = $("+csspath+").match(/^([.#]))){
          var element = document.getElementById('"+csspath+"'); 
          element.style.display = 'none'; 
        } else {
          element = document.getElementsByClassName('"+csspath+"');
          element[0].style.display = 'none';
        }
      }
      blockCssElement();
      ")
end

#check if a variable exists and set its value
def setAtrributOfArticle(var_text, variable, var_path)
  #var_value = article.variable
  #variable exists?
  if variable
    #set location
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
  else
    puts "#{var_text} is not available in #{ENV['COUNTRY']}"
  end
end