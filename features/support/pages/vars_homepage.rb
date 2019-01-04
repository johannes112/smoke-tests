#website_basics
class Csspathes_Homepage
  attr_accessor :homepage_content_logo_path, :homepage_product_cart_hint_content_path, :account_accountpage_welcome_path,
                #homepage
                :homepage_content_header_path, :homepage_content_searchfield_path, :homepage_content_navi_path, :homepage_content_navi_burger_path, :homepage_content_navi_burger_category_path,
                :homepage_content_navi_burger_category_title_path, :homepage_content_body_main_path, :homepage_content_footer_path,

  def initialize
    @homepage_content_logo_path = '.logo-main'
    @homepage_product_cart_hint_content_path = "div > div > div > div > .alert--content"
    @account_accountpage_welcome_path = '.account--welcome.panel'
    #website basics
    @homepage_content_header_path = 'div.page-wrap > header'
    @homepage_content_searchfield_path = '.navigation--entry.entry--search'
    @homepage_content_logo_path = '.logo-main'
    @homepage_content_navi_path = '.navigation-main'
    @homepage_content_navi_burger_path = '.entry--menu-left.entry--menu > a > i'
    @homepage_content_navi_burger_category_path = 'body > div.page-wrap > section > div > aside > div.sidebar--categories-wrapper > div.sidebar--categories-navigation > ul > li:nth-child(1) > a'
    @homepage_content_navi_burger_category_title_path = '.background > ul > li:nth-child(2) > a'
    @homepage_content_body_main_path = '.content-main'
    @homepage_content_footer_path = 'footer'
    update_pathes
  end

  def update_pathes
    @homepage_content_navi_path = '.entry--menu' if(ENV['PLATFORM'] == 'iOS_iPhone' || ENV['PLATFORM'] == 'iOS_iPad' || ENV['PLATFORM'] == 'android' )
  end

end
