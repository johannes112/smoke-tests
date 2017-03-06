#content.rb
When(/^I check the output of all servers of different webpage by visiting some links$/) do
  url_functions.set_url('https://www.vega-direct.com/de-de/')
  url_functions.check_all_server
end