#product_page
class Csspathes_Productpage
  attr_accessor :homepage_content_logo_path,
                :product_page_buybutton_path, :product_page_infobox_path, :product_cart_productinfo_path, :product_page_productname_path, :product_page_productpicture_path, :product_page_productconfig_path, :product_page_productinfo_path, :product_page_productrecommodations_path, :product_page_productlast_path, :product_page_rememberbutton_path, :product_page_heart_badge_path, :product_page_comparebutton_path, :product_page_compareicon_path, :product_page_rate_ratebutton_path, :product_page_rate_tab_menu, :product_page_rate_tab_rateflag, :product_page_viewed_tab_menu, :product_page_viewed_tab_otherCustomer, :product_page_rate_form, :product_page_suggest_container
  def initialize
    @homepage_content_logo_path = '.logo-main'
    @product_page_buybutton_path = 'form > div > button' #pdp: .MainProductButtons > div
    @product_page_infobox_path = '.is--active.is--open' 
    @product_cart_productinfo_path = 'div.panel--td.table--content'
    @product_page_productname_path = 'header > div > h1' #pdp: .MainProductName
    @product_page_productpicture_path = '.image-slider--container' #pdp: .image-gallery
    @product_page_productconfig_path = 'div.product--buybox.block' #pdp: .ProductSelectionBox
    @product_page_productinfo_path = '.tab-menu--product' #pdp: .ProductDescription
    @product_page_productrecommodations_path = 'div.tab-menu--cross-selling' #pdp: .ProductList
    @product_page_productlast_path = 'div.last-seen-products' #pdp: .tab-menu--cross-selling
    @product_page_rememberbutton_path = '.cart--add-to-list' #pdp: .merken
    @product_page_heart_badge_path = '.js--modal' #pdp: 
    @product_page_comparebutton_path = '.action--compare' #pdp: .vergleichen
    @product_page_compareicon_path = '.compare--quantity' #pdp: .icon--compare
    @product_page_rate_ratebutton_path = '.tab-menu--product.js--tab-menu > div.tab--navigation > a:nth-child(2)'
    @product_page_rate_tab_menu = 'div.tab-menu--product.js--tab-menu > div.tab--navigation > a'
    @product_page_rate_tab_rateflag = ':nth-child(2)'
    @product_page_rate_form = '#detail--product-reviews'
    @product_page_viewed_tab_menu = '.tab-menu--cross-selling > div > div' 
    @product_page_viewed_tab_otherCustomer = ':nth-child(2)'
    @product_page_suggest_container = '.tab-menu--cross-selling > div > div:nth-child(2)'
    update_pathes 
  end
  
  def update_pathes
    #give vars of enviroment to local vars
    @env_country ||= VARS_ENV.r_country
    @env_system ||= VARS_ENV.r_system
    @env_shop ||= VARS_ENV.r_shop
    
    # define hash of countries
    @product_page_buybutton_path = 'div.product--buybox.block > div > form > div > button' if "#{@env_shop}".match(/chefworks/) && "#{@env_country}".match(/[a-z]{2}/)
    @product_page_productpicture_path = '.product--image-container.image-slider.product--image-zoom' if "#{@env_shop}".match(/chefworks/) && "#{@env_country}".match(/[a-z]{2}/)
    @product_page_productinfo_path = 'div.tab-menu--product.js--tab-menu' if "#{@env_shop}".match(/chefworks/) && "#{@env_country}".match(/[a-z]{2}/)
    @product_page_rememberbutton_path = '.link--notepad' if "#{@env_shop}".match(/chefworks/) && "#{@env_country}".match(/[a-z]{2}/)
    @product_page_heart_badge_path = 'li.navigation--entry.entry--notepad > a > span' if "#{@env_shop}".match(/chefworks/) && "#{@env_country}".match(/[a-z]{2}/)
    @product_page_compareicon_path = '.navigation--entry.entry--compare > i' if "#{@env_shop}".match(/chefworks/) && "#{@env_country}".match(/[a-z]{2}/)
    @product_page_rate_ratebutton_path = 'a.action--link.link--publish-comment' if "#{@env_shop}".match(/chefworks/) && "#{@env_country}".match(/[a-z]{2}/)
    @product_page_viewed_tab_menu = '.tab-menu--cross-selling.js--tab-menu > div.tab--navigation > a' if "#{@env_shop}".match(/chefworks/) && "#{@env_country}".match(/[a-z]{2}/)
    @product_page_suggest_container = '.tab-menu--cross-selling.js--tab-menu > div.tab--navigation > a.tab--link.has--content.is--active' if "#{@env_shop}".match(/chefworks/) && "#{@env_country}".match(/[a-z]{2}/)
  end
  
end