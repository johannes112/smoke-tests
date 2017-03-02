require 'mechanize'
class UrlFunctions
  
  def initialize(base_url)
    # convert base_url into an object of mechanize and save the response into an instance variable
    @mechanize = Mechanize.new
    @page = @mechanize.get(base_url)
    @full_stack_of_server = false
  end
  
  def set_url_and_get_page(base_url)
    newpage = @mechanize.get(base_url)
    return newpage
  end
  
  def check_header(page_link)
    # look in header for value of key 'x-made-on' it says which webserver returns the currrent content
    page = set_url_and_get_page(page_link)
    header_x_made_on = 'x-made-on'
    header_key_x_made_on = page.header.key?(header_x_made_on)
    #check if this key exists on this page
    if (header_key_x_made_on)
      header_value_x_made_on = page[header_x_made_on]
      stack_of_server = push_to_arr(header_value_x_made_on)
    else
      puts "There is no key '#{header_x_made_on}"
      puts "Header all keys: #{page.header.keys}"
    end
  end
  
  def reload_page(page)
    puts "class: #{page.uri.to_s}"
    url = page.uri.to_s
    set_url_and_get_page(url)
    check_header
  end
  
  def push_to_arr(value)
    #array to store servernames in it
    @stack_of_server ||= Array.new
    stack_of_server = @stack_of_server
    #end if all servers are found
    if (stack_of_server.size==5)
      puts "all servers are checked and working"
      @full_stack_of_server = true
      return stack_of_server.size
    else
      #to prevent duplicate values
      if stack_of_server.include?value
        puts "#{value} is already content of stack"
      else
        stack_of_server << value
        puts "Stack of server: #{stack_of_server}"
      end
    end
    return stack_of_server
  end

  #check headers of linked pages
  def check_all_server
    #looking for all servers and check their status
    puts 'Check output of servers: '
    # looking for all elements 'a' with https part in url
    url_links = @page.links_with(:href => /https/)
    counter = 0
    #follow each link
    url_links.each do |link|
      if (@full_stack_of_server == false)
        counter = counter + 1
        #visit destination
        visit_url(link)
      end
    end
    puts "Es wurden #{counter} Seiten geprüft."
  end
  
  #links
  def get_all_links()
    puts 'All links: '
    # looking for all elements 'a' with https part in url
    url_links = @page.links_with(:href => /https/)
    counter = 0
    #follow each link
    url_links.each do |link|
      counter = counter + 1
      #visit destination
      puts " -> #{link.href}"
      visit_url(link)
      #exit after 10 links
      if counter==20
        break
      end
    end
    puts "Es wurden #{counter} Seiten geprüft."
  end
  
  def get_status(url)
    code1 = 100..102
    code2 = 200..226
    code3 = 300..308
    code4 = 400..449
    code5 = 500..511
    code9 = 900..999
    
    status_code = url.code.to_i
    case status_code
    when code1
      puts "#{status_code} - Information"
    when code2
      puts "#{status_code} - erfolgreiche Operation"
    when code3
      puts "#{status_code} - Umleitung"
    when code4
      puts "#{status_code} - Client Fehler"
    when code5
      puts "#{status_code} - Server Fehler"
    when code9
      puts "#{status_code} - 900er Fehler"
    else
      puts "#{status_code} - unbekannter Fehler"
    end
  end
  
  #visit url of link
  def visit_url(url)
    url_link = url
    linked_page = url_link.click
    #seas
    check_header(linked_page)
    get_status(linked_page)
  end
  
end