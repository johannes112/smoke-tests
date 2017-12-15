#search
class Search
  attr_accessor :homepage_content_logo_path,
                :search_searchfield_path, :search_searchbutton_path, :search_product_name_path, :search_results_path, :search_searchbutton_icon_path
                
  def initialize
    @vars ||= Vars.new(ENV['SYSTEM'], ENV['COUNTRY'], ENV['SHOP'])
    
    @env_country ||= @vars.r_country
    @env_system ||= @vars.r_system
    @env_shop ||= @vars.r_shop
    
    @homepage_content_logo_path = '.logo-main'
    @search_searchfield_path = '.entry--search > form > input'
    @search_searchbutton_path = '.entry--search > form > button'
    @search_searchbutton_icon_path = '.entry--search > form > button > i'
    @search_product_name_path = '.product--header'
    @search_results_path = '.search--results'
  end
  
  def update_pathes
    # define hash of countries
    @search_results_path = '.content-main--inner > .content--wrapper' if "#{@env_shop}".match(/pulsiva/) && "#{@env_country}".match(/[a-z]{2}/)
    @search_results_path = '.content-main--inner > .content--wrapper' if "#{@env_shop}".match(/hw_jobeline/) && "#{@env_country}".match(/[a-z]{2}/)
  end
  
end