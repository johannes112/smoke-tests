# Here are all ruby-functions for support
module MyFunctions
  # find_secure: workaround -> in ruby overlaoding functions are not possible
  # warning:
  #         do not use .page in front of this function
  #         do not use this function if there is the attribut ':visible'
  #         do not use this function if there is a specific element of the page given to find
  def find_secure(*args)
    #homepage_content_logo_path = websitebasics[:pathes].homepage_content_logo_path
    #page.find(homepage_content_logo_path)

    # if ( ENV['SHOP']=='vega' && (ENV['COUNTRY']=='de') || (ENV['COUNTRY']=='it') )
    #   block_css('.dpe-shopwide')
    # end
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
      page.find(path)
      found = page.find(path)
      # if element is not found
    rescue Capybara::ElementNotFound => e
      #wrong path or required data
      puts "Some elements not existing on the page"
      puts "'#{path}' is not found"
      # look if there react-elements
      if (page.html).include?('/react/')
        puts "it is a page with content of react"
        find_element_with_scrolling(path)
      elsif(page.has_css?(".has--error"))
        exception_has_error
      elsif(page.has_css?('.entry--menu'))
        path = '.entry--menu'
      end
      # search for similar path and rerun with new path given of function
      find_secure_counter < 2 ? retry : raise
    rescue Net::ReadTimeout => e
      url ||= page.current_url
      puts "\033[35m#{e.inspect}\033[0m\n"
      sleep 1
      puts "find_secure_with_one_arg"
      #Capybara.default_max_wait_time = 20
      reload_page(url)
      find_secure_counter <= 2 ? retry : raise
    rescue Selenium::WebDriver::Error::UnhandledAlertError
      puts "\033[35m#{e.inspect}\033[0m\n"
      sleep 1
      puts "find_secure"
      puts "Failed to visit #{current_url}, retry #{find_secure_counter}"
      find_secure_counter <= 2 ? retry : raise
    rescue Exception => e
      puts "#{e}"
      puts "\033[35m#{e.message}\033[0m\n"
      raise "custom message: UNKNOWN ERROR in find_secure_with_one_arg"
    end
    return found
  end

  def exception_has_error
    begin # identiy kind of error: check if element has class 'has--error'
      find(".has--error")
      puts "\033[35m>>> There is a errormessage\033[0m\n"
      puts "\033[35m#{e.inspect}\033[0m\n"
      # are there several elements of this errortyoe exist
    rescue Capybara::Ambiguous => e
      puts "\033[35m#{e.inspect}\033[0m\n"
      puts "\033[45m  >>> Several errors exist\033[0m\n"
      begin # identiy kind of error: check if element has class '.is--required.has--error'
        find(".is--required.has--error")
      rescue Capybara::Ambiguous => e
        puts "\033[45m  >>> several inputs are required\033[0m\n"
        element = find(".is--required.has--error")
        puts "\033[31m    >>>>>> #{element[:class]}\033[0m\n"
      end
    end
  end

  def reload_page(url)
    if url
      puts "visit #{url} again"
      visit(url)
      puts "Failed to visit #{url}, retry #{find_secure_counter}"
    else
      puts "no URL IS Defined"
    end
  end

  # find: lazyloading
  def find_element_with_scrolling(path)
    # it is useful for our pdp because react uses lazyload
    # it is a workaround to handle lazyload in Capybara/Selenium
    # generate a loop without the template of a loop
    # scoll down for 100px until Capybara the element which I am looking for
    # counter to avoid an endless loop
    find_scrolling_counter = 0
    begin
      # For faster 'loop' set lower Timeout
      Capybara.default_max_wait_time = 1
      find(path)
    rescue Capybara::ElementNotFound
      puts "> Maybe there is something like lazyloading active -> scroll down"
      page.execute_script("window.scrollBy(0,100)")
      # condition to exit the fuencton
      find_scrolling_counter =+ 1
      find_scrolling_counter < 20 ? retry : raise
    end
  end


  # find: catch Errors
  def find_secure_with_two_args(path, string)
    path_to_search = path
    find_secure_counter ||= 0
    found = ''
    begin
      find_secure_counter = find_secure_counter + 1
      if string_is_matcher?(string)
        found = page.find(path, string)
      else
        found = page.find(path_to_search)
      end
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
      url ||= page.current_url
      puts "find_secure_with_two_args"
      puts "visit #{url} again"
      if(url)
        visit(url)
      Capybara.default_max_wait_time = 20
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
      puts "go to #{url}"
      if ( ENV['SHOP']=='vega' && (ENV['COUNTRY']=='de') || (ENV['COUNTRY']=='it') )
        block_css('.dpe-shopwide')
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
      visit_secure_counter <= 3 ? retry : raise
    rescue Exception => e
      puts "\033[35m#{e.inspect}\033[0m\n"
    end
    sc = url_functions.get_status_code(url)
    if sc != 200
      puts "i can not visit #{url}"
      abort("HTTPCODE: #{sc}")
    else
      puts "statuscode:#{sc}"
    end
  end

  def get_url_part_of_website(site_of)
    #replace given string with url of this page
    if(site_of)
      case site_of
      when "homepage"
        puts "homepage"
        url_part = ""
      # it is not implemented. not yet!
      # when "category"
      #   puts "categorypage of #{websitebasics[:data].category}"
      #   url_part = "#{websitebasics[:data].category}/".downcase
      # when "subcategory"
      #   puts "subcategorypage of #{websitebasics[:data].sub_category}"
      #   url_part = "#{websitebasics[:data].category}/#{websitebasics[:data].sub_category}/".downcase
      when "productdetailpage"
        puts "subcategorypage of #{websitebasics[:data].productdetailpage}"
        url_part = "test-addtocart-735707?number=7357-07-1"
      else
        puts "Options: \n -homepage\n- category \n- subcategory \ndefault: take the given string"
        url_part = site_of
      end
      return url_part
    end
  end

  def compare_urls(expect_url, url)
    if (expect_url.eql? url)
      puts("#{expect_url}")
    else
      puts("> URL should be:##{url}")
      abort("> WRONG URL:##{expect_url}")
    end
  end

end
