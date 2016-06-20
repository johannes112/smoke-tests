class Csspathes
  attr_accessor :homepage_content_header_path, :homepage_content_searchfield_path, :homepage_content_navi_path, :homepage_content_body_main_path, :homepage_content_footer_path,
  #navigation
  :navigation_menu_path, :navigation_hovermenu_path, :navigation_path, :navigation_hovermenu_close_path, :navigation_sidebar_path, :navigation_hover_breadcrumb_path,
  #links
  :links_account_path, :links_registration_path, :links_notes_path, :links_note_path, :links_cart_symbol_path, :links_cart_sidebar_path, :links_cart_button_path, :links_service_path, :links_context_path,
  #search
  :search_searchfield_path, :search_searchbutton_path, :search_product_name_path, 
  #product_page
  :product_page_buybutton_path, :product_page_infobox_path, :product_cart_productinfo_path, :product_page_productname_path, :product_page_productpicture_path, :product_page_productconfig_path, :product_page_productinfo_path, :product_page_productrecommodations_path, :product_page_productlast_path, :product_page_rememberbutton_path, :product_page_heart_badge_path, :product_page_comparebutton_path, :product_page_compareicon_path, :product_page_rate_ratebutton_path, :product_page_rate_tab_menu, :product_page_rate_tab_rateflag, :product_page_rate_form, :product_page_viewed_tab_menu, :product_page_viewed_tab_otherCustomer, :product_page_rate_form, :product_page_suggest_container,
  :direct_ordering_formular_path, :direct_ordering_sku_input_path, :direct_ordering_amount_input_path, :direct_ordering_confirm_button_path, :direct_ordering_popup_path, :direct_ordering_css_name_path, :direct_ordering_css_amount_path, 
  :product_cart_table_path, :product_cart_delete_button_path, :product_cart_deleted_article_path, :product_cart_table_path2, :product_cart_product_attributes_path, :product_cart_delivery_path, :product_cart_pack_path, :product_cart_pack_price_color_path, :product_cart_pack_price_reduced_path, :product_cart_pack_price_not_reduced_path, :product_cart_pack_quantity_path, :product_cart_subtotal_path, :product_cart_button_path, :product_cart_worth_table_path, :product_cart_worth_subtotal_path, :product_cart_worth_text_path, :product_cart_worth_shipping_path, :product_cart_worth_netto_path, :product_cart_worth_text_strong_path, :product_cart_worth_mwst_path, :product_cart_worth_gross_path, 
  :product_page_article_table_path,  :product_page_let_box_appear_path, :product_page_appeared_button_path, :product_page_input_amount_path, :product_page_confirm_button_path, :product_page_confirm_box_path, :product_page_article_name_path, :product_page_article_sku_path, :product_page_article_color_path, :product_page_article_size_path, :product_page_article_pack_content_path, :product_page_article_price_piece_path, 
  :registration_create_account_button_path, :registration_confirm_formular_button_path, :registration_input_email_path, :registration_input_password_path, :registration_confirm_button_path, :registration_create_account_subtitle_path, :registration_form_customernumber_path, :registration_form_email_input_path, :registration_form_password_input_path, :registration_form_password_confirm_input_path, :registration_form_company_input_path, :registration_form_prefix_selector_path, :registration_form_owner_firstname_input_path, :registration_form_owner_lastname_input_path, :registration_form_firstname_input_path, :registration_form_lastname_input_path, :registration_form_street_input_path, :registration_form_postcode_input_path, :registration_form_city_input_path, :registration_form_telephone_input_path, :registration_form_streetnumber_input_path, :registration_form_organumber_input_path, :registration_form_region_selector_path, :registration_form_taxvat_input_path, 
  :company_input_path, :owner_firstname_input_path, :owner_lastname_input_path, :prefix_selector_path, :customernumber_path, :firstname_input_path, :lastname_input_path, :street_input_path, :postcode_input_path, :city_input_path, :telephone_input_path, :email_input_path, :password_input_path, :taxvat_input_path, :organumber_input_path, :confirm_password_input_path, :confirm_form_billing_button_path, :streetnumber_input_path, :region_selector_path, :agreement_checkbox_path, :confirm_form_shipping_button_path, :payment_selector_path, :confirm_form_button_path, :guest_login_selector_path, :confirm_selection_button_path, :confirm_checkout_form_button_path, :confirm_billing_button_path, :registration_selector_path, :confirm_registration_button_path, :success_button_path, :transaction_ID_path,
  :filter_navigation_path
  
  def initialize
    #website basics
    @homepage_content_header_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'body > div.page-wrap > header'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'body > div.page-wrap > header'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'body > div.page-wrap > header'
      else ''
    end
    @homepage_content_searchfield_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.navigation--entry.entry--search'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.navigation--entry.entry--search'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.navigation--entry.entry--search'
      else ''
    end
    @homepage_content_navi_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'body > div.page-wrap > nav'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'body > div.page-wrap > nav'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'body > div.page-wrap > nav'
      else ''
    end
    @homepage_content_body_main_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'div.page-wrap > section > div'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'div.page-wrap > section > div'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'div.page-wrap > section > div'
      else ''
    end
    @homepage_content_footer_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'footer'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'footer'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'footer'
      else 'footer'
    end
    #navigation
    @navigation_menu_path = case
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then '.page-wrap > nav'
      else '.page-wrap > nav'
    end
    @navigation_hovermenu_path = case
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then '.advanced-menu'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.menu--list.menu--level-0'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.advanced-menu'
    end
    @navigation_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.page-wrap > nav'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.page-wrap > nav'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.page-wrap > nav'
      else '.page-wrap > nav'
    end
    @navigation_hovermenu_close_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then          '.menu--is-active > div.button-container > span > i'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then       '.menu--container.menu--is-active > div > span > i'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'form > label'
    end
    @navigation_sidebar_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then          '.sidebar--categories-navigation'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.sidebar--categories-navigation'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then       '.sidebar--categories-navigation'
    end
    @navigation_hover_breadcrumb_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'section > nav > ul' 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.content--breadcrumb'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'section > nav > ul'
    end
    #links
    @links_account_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.entry--account'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.entry--account'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.entry--account'
      else ''
    end
    @links_registration_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '#registration'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '#registration'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '#registration'
      else ''
    end
    @links_notes_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.entry--notepad'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.entry--wishlist'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.entry--notepad'
      else ''
    end
    @links_note_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.note--content'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.note--content'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.note--content'
      else ''
    end
    @links_cart_symbol_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.entry--cart'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.entry--cart'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.entry--cart'
      else ''
    end
    @links_cart_button_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.button--open-basket'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.button--open-basket'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.button--open-basket'
      else ''
    end
    @links_cart_sidebar_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.container--ajax-cart.off-canvas.is--right.is--active.is--open'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.container--ajax-cart.off-canvas.is--right.is--active.is--open'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.container--ajax-cart.off-canvas.is--right.is--active.is--open'
      else ''
    end
    @links_service_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'div.navigation--entry.entry--service'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'div.navigation--entry.entry--service'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.navigation--entry.entry--service'
      else ''
    end
    @links_context_path = case 
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'div.navigation--entry.entry--service.has--drop-down.js--is--dropdown-active > ul'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'div.navigation--entry.entry--service.has--drop-down.js--is--dropdown-active > ul'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.navigation--entry.entry--service.has--drop-down.js--is--dropdown-active > ul'
      else ''
    end
    #search.rb
    @search_searchfield_path = case 
      when ENV['SHOP'].match(/Hchefworks/) && ENV['COUNTRY'].match(/de/) then      ''
      when ENV['SHOP'].match(/hpulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  ''
      when ENV['SHOP'].match(/hexport/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   ''
      else '.entry--search > form > input'
    end
    @search_searchbutton_path = case 
      when ENV['SHOP'].match(/Hchefworks/) && ENV['COUNTRY'].match(/de/) then      ''
      when ENV['SHOP'].match(/hpulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  ''
      when ENV['SHOP'].match(/hexport/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   ''
      else '.entry--search > form > button'
    end
    @search_product_name_path = case
      when ENV['SHOP'].match(/Hchefworks/) && ENV['COUNTRY'].match(/de/) then      ''
      when ENV['SHOP'].match(/hpulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  ''
      when ENV['SHOP'].match(/hexport/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   ''
      else 'header > div > h1'
    end
    #product_page.rb
    @product_page_buybutton_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.detail--block--value > form > button'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.header-panel.header > div > div > div > span'
      else 'div.product--buybox.block > div > form > div > button'
    end
    @product_page_infobox_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '.is--active.is--open'
    end
    @product_cart_productinfo_path = case 
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.header-panel.header > div > div > div > span'
      else 'div.panel--td.table--content'
    end
    @product_page_productname_path = case 
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'header > div > h1'
      else 'header > div > h1'
    end
    @product_page_productpicture_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.product--image-container.image-slider.no--thumbnails > div > div > div > span > span > img'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.header-panel.header > div > div > div > span'
      else 'div.product--image-container.image-slider.product--image-zoom'
    end
    @product_page_productconfig_path = case 
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.header-panel.header > div > div > div > span'
      else 'div.product--buybox.block'
    end
    @product_page_productinfo_path = case 
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.header-panel.header > div > div > div > span'
      else 'div.tab-menu--product.js--tab-menu'
    end
    @product_page_productrecommodations_path = case 
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.header-panel.header > div > div > div > span'
      else 'div.tab-menu--cross-selling'
    end
    @product_page_productlast_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'div.last-seen-products'
    end
    @product_page_rememberbutton_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.cart--add-to-list'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.header-panel.header > div > div > div > span'
      else '.link--notepad'
    end
    @product_page_heart_badge_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.js--modal.sizing--content'
      else 'li.navigation--entry.entry--notepad > a > span'
    end
    @product_page_comparebutton_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '.action--compare'
    end
    @product_page_compareicon_path = case
      when 'COUNTRY' then '.navigation--entry.entry--compare'
      else '.entry--compare'
    end
    @product_page_rate_ratebutton_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'a.tab--link.has--content.is--active'
      else 'a.action--link.link--publish-comment'
    end
    @product_page_rate_tab_menu = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'div.tab-menu--product.js--tab-menu > div.tab--navigation > a'
    end  
    @product_page_rate_tab_rateflag = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else ':nth-child(2)'
    end
    @product_page_rate_form = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#detail--product-reviews > div.block-group'
      else '#detail--product-reviews'
    end
    @product_page_viewed_tab_menu = case 
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'div.tab-menu--cross-selling.js--tab-menu > ul > a:nth-child(3)'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.tab-menu--cross-selling > div > div:nth-child(2)'#.tab-menu--cross-selling > div > div:nth-child(2) > div.tab--header
      else                                                                       'div.tab-menu--cross-selling.js--tab-menu > div.tab--navigation > a'
    end
    @product_page_viewed_tab_otherCustomer = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.tab--header'
      else ':nth-child(3)'
    end
    @product_page_suggest_container = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.tab-menu--cross-selling > div > div:nth-child(2)'
      else ':.tab-menu--cross-selling > div'
    end
    #product_cart ###################################################################################################################################################################
    @product_cart_pack_price_reduced_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'td:nth-child(4) > span > span > span > span'
    end
    @product_cart_pack_price_not_reduced_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'td:nth-child(4) > span > span > span'
    end
    @product_cart_pack_quantity_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'td:nth-child(5) > input'
    end
    @product_cart_subtotal_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'td:nth-child(6) > span > span'
    end
    @product_cart_button_path = case
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'body > div.wrapper > div > div.cont > div.main.col1-layout > div > div.cart > div.page-title.title-buttons > ul > li:nth-child(2) > button'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'body > div.wrapper > div.page > div.cont > div.main.col1-layout > div > div.cart > div > div.page-title.title-buttons > ul > li > button'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'body > div.wrapper > div > div.cont > div.main.col1-layout > div > div.cart_all > div > div.page-title.title-buttons > div > div.rounded-corner-content > ul > li > button > span > span'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'body > div.wrapper > div > div.cont > div.main.col1-layout > div > div.cart_all > div > div.page-title.title-buttons > div > div.rounded-corner-content > ul > li:nth-child(2) > button'
    end
    @product_cart_worth_table_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#shopping-cart-totals-table'
    end
    @product_cart_worth_subtotal_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'tbody > tr:nth-child(1)'
    end
    @product_cart_worth_text_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'td:nth-child(2) > span'
    end
    @product_cart_worth_shipping_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'tbody > tr:nth-child(2)'
    end
    @product_cart_worth_netto_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'tfoot > tr:nth-child(1)'
    end
    @product_cart_worth_text_strong_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'td:nth-child(2) > strong > span'
    end
    @product_cart_worth_mwst_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'tfoot > tr:nth-child(2)'
    end
    @product_cart_worth_gross_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'tfoot > tr:nth-child(3)'
    end
    #product_page
    @product_page_article_table_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'li#standardset > div.a-item > table > tbody.grouped-product-row'
    end
    @product_page_let_box_appear_path = case
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         '#product_addtocart_form > div.product-essential > div.product-shop > div.product-main-info > div.product-name > h1'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '#product_addtocart_form > div.product-essential > div.product-shop > div.product-main-info > div.product-name > h1'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#product_addtocart_form > div.product-essential > div.product-shop > div.product-main-info > div.product-name > h1'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '#product_addtocart_form > div.product-essential > div.product-shop > div.product-main-info > div.product-name'
      #product_addtocart_form > div.product-essential > div.product-collateral > div.tabs > div.tab-content
    end
    @product_page_appeared_button_path = case
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#pre-cart-content > div > button'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#pre-cart-content > div > button'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#pre-cart-content > div.fixed_subtotal > button'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#pre-cart-content > div > button'
    end
    @product_page_input_amount_path = case
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'td.filter-qty.acc-quantity > input.input-text.qty'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'td.filter-qty.acc-quantity > input.input-text.qty'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'td.acc-quantity > input'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/de/) then           'td.acc-quantity > div > input'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then           'td.acc-quantity > div > input'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then           'td.acc-quantity > div > input'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     'td.filter-qty.acc-quantity > input'
    end
    @product_page_confirm_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'button.acc-cart'
    end
    @product_page_confirm_box_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#j2t_ajax_confirm'
    end
    @product_page_article_name_path = case 
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'td.filter-name.acc-name'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'td.filter-name.acc-name'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'td.acc-name'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     'td.acc-name'
    end
    @product_page_article_sku_path = case
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'td.filter-sku'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'td.filter-sku'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.filter-sku'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.filter-sku'
    end
    @product_page_article_color_path = case
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'td.filter-color'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'td.filter-color'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'tr:nth-child(4) > td.small-td > span:nth-child(1)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/de/) then           'tr:nth-child(2) > td > span:nth-child(2)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then           'tr:nth-child(2) > td > span:nth-child(2)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then           'tr:nth-child(2) > td > span:nth-child(2)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     'td.filter-color'
    end
    @product_page_article_size_path = case
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'td.filter-dimension'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'td.filter-dimension'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'tr:nth-child(3) > td > span'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/de/) then           'span.filter-dimension'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then           'span.filter-dimension'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then           'span.filter-dimension'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     'td.filter-dimension'
    end
    @product_page_article_pack_content_path = case
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'td.filter-packing_amount'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'td.filter-packing_amount'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'td:nth-child(5)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/de/) then           'td:nth-child(5)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then           'td:nth-child(5)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then           'td:nth-child(5)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     'td.filter-packing_amount'
    end
    @product_page_article_price_piece_path = case
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'td.filter-price'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'td.filter-price'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'td:nth-child(4) > span.price'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/de/) then           'td:nth-child(4) > span.price'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then           'td:nth-child(4) > span.price'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then           'td:nth-child(4) > span.price'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     'td.filter-price'
    end
    #registration
    @registration_create_account_button_path = case
      #when 'shop' && 'country' then 'xxx'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'div.new-users > div > button'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.new-users > div > button'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#login-form > div > div > div.col-2.new-users > div > div > div.rounded-corner-content > div > button'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '#login-form > div > div > div.col-2.new-users > div > div > div.rounded-corner-content > div > button'
    end
    @registration_confirm_formular_button_path = case
      when (ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/)) then         '#form-validate > div.buttons-set.form-buttons > button'
      when (ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/)) then      '#form-validate > div.buttons-set.form-buttons > button'
      when (ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/)) then '#form-validate > div.buttons-set.button-set-width > button'
      when (ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/de/)) then           '#form-validate > div.buttons-set.button-set-width > button'
      when (ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/)) then           '#form-validate > div.buttons-set.button-set-width > button'
      when (ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/)) then           '#form-validate > div.buttons-set.button-set-width > button'
      when (ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/)) then     '#form-validate > div.buttons-set.form-buttons > button'
    end
    @registration_input_email_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#email'
    end
    @registration_input_password_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#pass'
    end
    @registration_confirm_button_path = case ENV['COUNTRY']
      when 'it' then 'div.registered-users #send2'
      else '#login-form #send2'
    end
    @registration_create_account_subtitle_path = case
      #when 'shop' && 'country' then 'xxx'
      when ENV['SHOP'].match(/mvega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'div.new-users > div > button'
      when ENV['SHOP'].match(/mpulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.new-users > div > button'
      when ENV['SHOP'].match(/mhotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#login-form > div > div > div.col-2.new-users > div > div > div.rounded-corner-content > div > button'
      when ENV['SHOP'].match(/mjobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '#login-form > div > div > div.col-2.new-users > div > div > div.rounded-corner-content > div > button'
      else 'div.welcome-msg > h2'
    end
    @registration_form_customernumber_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#customer_number'
    end
    @registration_form_email_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#email_address'
    end
    @registration_form_password_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#password'
    end
    @registration_form_password_confirm_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#confirmation'
    end
    @registration_form_company_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#company'
    end
    @registration_form_prefix_selector_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#prefix'
    end
    @registration_form_owner_firstname_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#owner_firstname'
    end
    @registration_form_owner_lastname_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#owner_lastname'
    end
    @registration_form_firstname_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#firstname'
    end
    @registration_form_lastname_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#lastname'
    end
    @registration_form_street_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#street_1'
    end
    @registration_form_postcode_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#postcode'
    end
    @registration_form_city_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#city'
    end
    @registration_form_telephone_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#telephone'
    end
    @registration_form_streetnumber_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#street_2'
    end
    @registration_form_organumber_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#organisationsnummer'
    end
    @registration_form_region_selector_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#region_id'
    end
    @registration_form_taxvat_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#taxvat'
    end
    #checkout
    @company_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a company'
    end
    @owner_firstname_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a owner_firstname'
    end
    @owner_lastname_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a owner_lastname'
    end
    @prefix_selector_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a prefix'
    end
    @customernumber_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a customer_number'
    end
    @firstname_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a firstname'
    end
    @lastname_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a lastname'
    end
    @street_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a street1'
    end
    @postcode_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a postcode'
    end
    @city_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a city'
    end
    @telephone_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a telephone'
    end
    @email_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a email'
    end
    @password_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a customer_password'
    end
    @taxvat_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a taxvat'
    end
    @organumber_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a organisationsnummer'
    end
    @confirm_password_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a confirm_password'
    end
    @confirm_form_billing_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing-buttons-container > button'
    end
    @streetnumber_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a street2'
    end
    @region_selector_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing\3a region_id'
    end
    @agreement_checkbox_path = case ENV['COUNTRY']
      when 'it' then '#agreement-19'
      else '#agreement-checkbox input'
    end
    @confirm_form_shipping_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#shipping-method-buttons-container > button'
    end
    @payment_selector_path = case ENV['COUNTRY']
      when 'ch' then '#p_method_aufrechnung'
      else '#p_method_bankpayment'
    end
    @confirm_form_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#payment-buttons-container > button'
    end
    @guest_login_selector_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#login\3a guest'
    end
    @confirm_selection_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#checkout-step-login > div > div.col-2 > div > button'
    end
    @confirm_checkout_form_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#review-buttons-container > button'
    end
    @confirm_billing_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#billing-buttons-container > button'
    end
    @registration_selector_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#login\3a register'
    end
    @confirm_registration_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#checkout-step-login > div > div.col-2 > div > button'
    end
    @success_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'div.buttons-set > button'
    end
    @transaction_ID_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'body > div.wrapper > div > div.cont > div.main.col1-layout > div > form > input[type="hidden"]:nth-child(1)'
    end
    #global
    @filter_navigation_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#nav'
    end
  end
end