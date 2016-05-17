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
    puts "disable all styleSheets"
  rescue
    puts "           can not disable_css"
  end
end  

#display:none for given css element
def block_css(csspath)
  #check if element is class or id
    page.driver.browser.execute_script("
      function blockCssElement()
      {
        if (matches = $"+csspath+".match(/^([.#])){
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