require_relative "url_functions.rb"
  url_functions = UrlFunctions.new('https://www.vega-direct.com/de-de/')
  url_functions.get_all_links
  #url_functions.check_all_server
