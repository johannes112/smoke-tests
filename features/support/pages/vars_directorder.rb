#directorder
class Directorder
  attr_accessor :homepage_content_logo_path,
                :direct_ordering_button_path, :direct_ordering_form_sku_path, :direct_ordering_form_quantity_path, :direct_ordering_form_button_path, :direct_ordering_sidebar_item_path
                
  def initialize
    @vars ||= Vars.new(ENV['SYSTEM'], ENV['COUNTRY'], ENV['SHOP'])
    
    @env_country ||= @vars.r_country
    @env_system ||= @vars.r_system
    @env_shop ||= @vars.r_shop
    
    @homepage_content_logo_path = '.logo-main'
    @direct_ordering_button_path = '.header--directOrder' 
    @direct_ordering_form_sku_path = '.emgroup-direct-order-searchterm-column > input' 
    @direct_ordering_form_quantity_path = '.emgroup-direct-order-quantity-column > div'
    @direct_ordering_form_button_path = '.emgroup-direct-order-submit'
    @direct_ordering_sidebar_item_path = 'div.item--container > div > a'
    
  end
  
  def update_pathes
    # define hash of countries
    @direct_ordering_form_button_path = 'form > button.emgroup-direct-order-submit.btn.right.is--icon-left' if "#{@env_shop}".match(/vega/) && "#{@env_country}".match(/[a-z]{2}/)
    @direct_ordering_form_button_path = 'form > button.emgroup-direct-order-submit.btn.right.is--icon-left' if "#{@env_shop}".match(/pulsiva/) && "#{@env_country}".match(/[a-z]{2}/)
    @direct_ordering_sidebar_item_path = '.container--ajax-cart' if "#{@env_shop}".match(/hotelwaesche/) && "#{@env_country}".match(/[a-z]{2}/)
  end
  
end