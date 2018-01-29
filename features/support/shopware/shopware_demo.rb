#this sample shows how to use the restapi of shopware with ruby
require_relative 'shopware_api'
username = ARGV[0]
puts "username:#{username}"
apikey = ARGV[1]
puts "apikey:#{apikey}"
husername = ARGV[2]
puts "husername:#{husername}"
hapikey = ARGV[3]
puts "hapikey:#{hapikey}"
@urlname = ARGV[4]
urlname = @urlname
puts "urlname:#{urlname}"

#shopware_user0 = ShopwareApi.new()#husername, hapikey)
#shopware_user0.setBasic(husername, hapikey, urlname)
#shopware_user0.getWholeData('Customers')
#shopware_user1.getWholeData('Orders')
shopware_user1 = ShopwareApi.new()#husername, hapikey)
shopware_user1.setDigest(username, apikey, urlname)
#api:
#puts shopware_user1.getCustomerIdByMail("testmail_pde@emmos.de")
#shopware_user1.deleteCustomerByMail("testmail_xpde@emmos.de")
# shopware_user1.setCustomerAttributes('testmail_xpde@emmos.de', 'firstname', 'lastname', 'mr', 'password', 1, 'street 1', 'Wertingen', '86637', 2)
#shopware_user1.setCustomerAttributes('testmail_xpde@emmos.de', 'firstname', 'lastname', 'mr', 'password', 1, 'street 1', 'Wertingen', '86637', 2)
#shopware_user1.setCustomerAttributes('testmail_pde@emmos.de', 'johann')
#shopware_user1.updateOrderStatusForMail("testmail_pulsiva@test.de")
