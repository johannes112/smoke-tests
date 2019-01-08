#homepage
class Csspathes_Homepage
  attr_accessor :homepage_content_header_path, :homepage_content_searchfield_path, :homepage_content_navi_path,
                :homepage_content_body_main_path, :homepage_content_footer_path

  def initialize
    @homepage_content_header_path = 'div.page-wrap > header'
    @homepage_content_searchfield_path = '.navigation--entry.entry--search'
    @homepage_content_navi_path = '.navigation-main'
    @homepage_content_body_main_path = '.content-main'
    @homepage_content_footer_path = 'footer'
    update_pathes
  end

  def update_pathes
    @homepage_content_navi_path = '.entry--menu' if(ENV['PLATFORM'] == 'iOS_iPhone' || ENV['PLATFORM'] == 'iOS_iPad' || ENV['PLATFORM'] == 'android' )
  end

end
