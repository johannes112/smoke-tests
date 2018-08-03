require_relative "features/support/shopware/shopware_api.rb"

api = ShopwareApi.new
api.setDigest("testapier", "UO7ukuN6Xav07SO6gDVqds2WHDKsZQ1y0eM5J04U", "http://int.hotelwaesche.de/")
#customer_id = api.getCustomerIdByMail("johannes.launer@emmos.de")
#puts("API says ID is: #{customer_id}")
#puts("getData: #{api.getData("customers", customer_id)}")
#puts("article:#{api.getArticleById("articles", 30001907)}")
api.setValueToActivateArticle("articles", 30001907)
#api.setValueToDeactivateArticle("articles", 30001907)
