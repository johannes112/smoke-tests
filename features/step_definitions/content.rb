#content.rb
When(/^I check the output of all servers of different webpage by visiting some links$/) do
  url_functions.set_url(settings.urlHttps)
  server_status_value = url_functions.check_all_server
  expect(server_status_value).to eq("5"),
     "expect to get an ok but not all server working faultless. \nError message: #{server_status_value}"
end