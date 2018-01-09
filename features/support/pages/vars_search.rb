#search
class Search
  attr_accessor :homepage_content_logo_path,
                :search_searchfield_path, :search_searchbutton_path, :search_product_name_path, :search_results_path, :search_searchbutton_icon_path
                
  def initialize
    @homepage_content_logo_path = '.logo-main'
    @search_searchfield_path = '.entry--search > form > input'
    @search_searchbutton_path = '.entry--search > form > button'
    @search_searchbutton_icon_path = '.entry--search > form > button > i'
    @search_product_name_path = '.product--header'
    @search_results_path = '.search--results'
    update_pathes
  end
  
  def update_pathes
    #give vars of enviroment to local vars
    @env_country ||= VARS_ENV.r_country
    @env_system ||= VARS_ENV.r_system
    @env_shop ||= VARS_ENV.r_shop
    # define hash of countries
    @search_results_path = '.content-main--inner > .content--wrapper' if "#{@env_shop}".match(/(pulsiva|hw_jobeline)/) && "#{@env_country}".match(/[a-z]{2}/)
  end
  
end