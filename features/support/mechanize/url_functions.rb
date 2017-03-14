require 'mechanize'
class UrlFunctions
  
  def initialize()
    # convert base_url into an object of mechanize and save the response into an instance variable
    @mechanize = Mechanize.new
    @full_stack_of_server = false
  end
  
  def set_url(base_url)
    @page = @mechanize.get(base_url)
    @mechanize_base_url = base_url
  end
  
  def set_url_and_get_page(base_url)
    newpage = @mechanize.get(base_url)
    return newpage
  end
  
  def check_header(page_link)
    header_value_x_made_on = "xyx"
    # look in header for value of key 'x-made-on' it says which webserver returns the currrent content
    page = set_url_and_get_page(page_link)
    header_x_made_on = 'x-made-on'
    header_key_x_made_on = page.header.key?(header_x_made_on)
    #check if this key exists on this page
    if (header_key_x_made_on)
      header_value_x_made_on = page[header_x_made_on]
      push_to_server_arr(header_value_x_made_on)
    else
      puts "There is no key '#{header_x_made_on}"
      puts "Header all keys: #{page.header.keys}"
    end
    return header_value_x_made_on
  end
  
  def push_to_server_arr(value)
    #array to store servernames in it
    @stack_of_server ||= Array.new
    stack_of_server = @stack_of_server
    #end if all servers are found
    if (stack_of_server.size==5)
      @full_stack_of_server = true
    else
      #to prevent duplicate values
      if !stack_of_server.include?value
        stack_of_server << value
      end
    end
  end

  #check headers of linked pages
  def check_all_server
    server_status = "server_status_default"
    visited_server = Array.new
    unique_visited_server = Array.new
    value_false = 'false'
    #looking for all servers and check their status
    #looking for all elements 'a' with https part in url
    url_links = @page.links_with(:href => /https/)
    counter = 0
    #follow each link
    url_links.each do |link|
      if (@full_stack_of_server == false)
        #visit destination
        visited_server << visit_url(link)
        # check if server have a bad(false) status
        if (visited_server[counter].include?(value_false))
          #to prevent duplicate content (server) in array
          unless unique_visited_server.include?(visited_server[counter])
            unique_visited_server = unique_visited_server.push(visited_server[counter]) 
          end
          #failed_servers = "Error on #{visited_server[counter]}\n"
          failed_servers = "Error on #{unique_visited_server}\n"
          server_status << failed_servers
        else
          unless unique_visited_server.include?(visited_server[counter])
            unique_visited_server = unique_visited_server << (visited_server[counter]) 
          end
          server_status = "#{unique_visited_server.size}"# webservers are working
        end
        counter = counter + 1
      end
    end
    return server_status
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
      visit_url(link)
    end
    puts "Es wurden #{counter} Seiten geprüft."
  end

  #visit url of link
  def visit_url(url)
    url_link = url
    begin
      linked_page = url_link.click
    rescue Exception => e
      puts "#{e.message}"
      linked_page = @page
    end
      #initialize vars for return
      server_status_delivery = true
      determined_server = "determined_server_default"
      server_status = "server_status_default"
      check_for_key = "page-wrap"
      determined_server = check_header(linked_page)
      # check if page contain something
      if linked_page.body.include?(check_for_key)
        server_status_delivery = get_status(linked_page)
      else 
        raise ("page of #{linked_page.uri.to_s} do not include #{check_for_key}")
      end
      server_status = "#{determined_server}:#{server_status_delivery}"  
    return server_status
  end
  
  def get_status(url)
    server_delivery_ok = true
    code1 = 100..102
    code2 = 200..226
    code3 = 300..308
    code4 = 400..449
    code5 = 500..511
    code9 = 900..999
    status_code = url.code.to_i
    case status_code
    when code1
      #puts "#{status_code} - Information"
      server_delivery_ok = false
    when code2
      #puts "#{status_code} - erfolgreiche Operation"
      server_delivery_ok = true
    when code3
      #puts "#{status_code} - Umleitung"
      server_delivery_ok = false
    when code4
      #puts "#{status_code} - Client Fehler"
      server_delivery_ok = false
    when code5
      #puts "#{status_code} - Server Fehler"
      server_delivery_ok = false
    when code9
      #puts "#{status_code} - 900er Fehler"
      server_delivery_ok = false
    else
      #puts "#{status_code} - unbekannter Fehler"
      server_delivery_ok = false  
    end
    return server_delivery_ok
  end
  
end