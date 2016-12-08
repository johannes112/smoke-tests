class Csspathes
  attr_accessor :homepage_content_header_path, :homepage_content_searchfield_path, :homepage_content_navi_path, :homepage_content_body_main_path, :homepage_content_footer_path,
  #navigation
  :navigation_menu_path, :navigation_hovermenu_path, :navigation_path, :navigation_hovermenu_close_path, :navigation_sidebar_path, :navigation_hover_breadcrumb_path,
  #links
  :links_account_path, :links_registration_path, :links_notes_path, :links_note_path, :links_cart_symbol_path, :links_cart_sidebar_path, :links_cart_button_path, :links_service_path, :links_context_path,
  #search
  :search_searchfield_path, :search_searchbutton_path, :search_product_name_path, :search_results_path, 
  #direct_ordering
  :direct_ordering_button_path, :direct_ordering_form_sku_path, :direct_ordering_form_button_path, :direct_ordering_sidebar_item_path, 
  #product_page
  :product_page_buybutton_path, :product_page_infobox_path, :product_cart_productinfo_path, :product_page_productname_path, :product_page_productpicture_path, :product_page_productconfig_path, :product_page_productinfo_path, :product_page_productrecommodations_path, :product_page_productlast_path, :product_page_rememberbutton_path, :product_page_heart_badge_path, :product_page_comparebutton_path, :product_page_compareicon_path, :product_page_rate_ratebutton_path, :product_page_rate_tab_menu, :product_page_rate_tab_rateflag, :product_page_rate_form, :product_page_viewed_tab_menu, :product_page_viewed_tab_otherCustomer, :product_page_rate_form, :product_page_suggest_container,
  #product_cart
  :product_cart_article_path, :product_cart_button_continue_path, :product_cart_remove_article_path, :product_cart_article_path, :product_cart_article_details_path, :product_cart_article_price_path, :product_cart_article_voucher_path, :product_cart_button_checkout_path, 
  :product_cart_checkout_steps_path, :product_cart_voucher_checkbox_path, :product_cart_voucher_input_path, :product_cart_voucher_button_path, :product_cart_order_sku_path, :product_cart_order_button_path,
  #account
  :account_registerform_path, :account_registerform_prefix_path, :account_registerform_firstname_path, :account_registerform_lastname_path, :account_registerform_department_path, :account_registerform_taxid_path,
  :account_registerform_taxvat_path, :account_registerform_email_path, :account_registerform_password_path, :account_registerform_phone_path, :account_registerform_company_path, :account_registerform_checkbox_company_path, :account_registerform_street_path, :account_registerform_streetnumber_path,
  :account_registerform_postcode_path, :account_registerform_city_path, :account_registerform_country_path, :account_registerform_button_path, :account_accountpage_welcome_path, :account_accountpage_info_path, :account_loginform_emailfield_path, :account_loginform_passwordfield_path, 
  :account_loginform_registerbutton_path, :account_userinfo_passwordchange_button_appear_path, :account_userinfo_passwordchange_currentpassword_path, :account_userinfo_passwordchange_newpassword_path, 
  :account_userinfo_passwordchange_repeatnewpassword_path, :account_userinfo_passwordchange_button_path, :account_userinfo_emailchange_button_appear_path, :account_userinfo_emailchange_currentpassword_path, 
  :account_userinfo_emailchange_newmail_path, :account_userinfo_emailchange_repeatnewmail_path, :account_userinfo_emailchange_button_path, :account_userinfo_success_hint_path , :account_accountinfo_menucontainer_logout_link_path, 
  :account_accountinfo_payment_box_path, :account_accountinfo_paymentchange_button_appear_path, :account_payment_paymentoptions_path, :account_payment_cashOnDelivery_path, :account_payment_change_button_path, 
  :account_accountinfo_billaddress_box_path, :account_accountinfo_billaddresschange_button_appear_path, :account_invoiceadresschange_form_prefix_path, :account_invoiceadresschange_button_path, :account_accountinfo_deliveraddress_box_path, 
  :account_accountinfo_deliveraddresschange_button_appear_path, :account_deliveradresschange_form_prefix_path, :account_deliveradresschange_button_path, :account_newsletter_box_path, :account_sidebar_path, :account_registerform_customernumber_path,
  :account_address_create_path,  :account_address_prefix_path, :account_address_firstname_path, :account_address_lastname_path, :account_address_phone_path, :account_address_company_path, :account_address_street_path, :account_address_streetnumber_path, :account_address_postcode_path, :account_address_city_path, :account_address_standard_path, :account_address_country_path, :account_address_savebutton_path, 
  #checkout
  :checkout_backbutton_path, :checkout_steps_container_path, :checkout_agb_container_path, :checkout_billing_container_path, :checkout_shipping_container_path, :checkout_payment_container_path, 
  :checkout_product_container_path, :checkout_orderbutton_path, :checkout_panel_path, :checkout_agb_box_path, :checkout_checkout_proceed_button_path, :checkout_registerform_path, :checkout_registerform_prefix_path, 
  :checkout_registerform_firstname_path, :checkout_registerform_lastname_path, :checkout_registerform_department_path, :checkout_registerform_taxvat_path, :checkout_registerform_email_path, 
  :checkout_registerform_skip_path, :checkout_registerform_phone_path, :checkout_registerform_company_path, :checkout_registerform_street_path, :checkout_registerform_streetnumber_path, :checkout_registerform_postcode_path, 
  :checkout_registerform_city_path, :checkout_registerform_country_path, :checkout_registerform_button_path, :checkout_payment_form_path, :checkout_paymentInAdvance_radio_path, :checkout_registerform_customernumber_path, 
  :checkout_payment_continue_path, :checkout_payment_delivery_standard_radio_path, :checkout_order_success_teaser_path, :checkout_checkout_buy_button_path

 
  
  def initialize
    #website basics
    @homepage_content_header_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'div.page-wrap > header'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     'div.page-wrap > header'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'body > div.page-wrap > header'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'body > div.page-wrap > header'
      else 'div.page-wrap > header' 
    end
    @homepage_content_searchfield_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.navigation--entry.entry--search'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.navigation--entry.entry--search'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.navigation--entry.entry--search'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.navigation--entry.entry--search'
      else '.navigation--entry.entry--search'
    end
    @homepage_content_navi_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.navigation-main'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.navigation-main'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'body > div.page-wrap > nav'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'body > div.page-wrap > nav'
      else '.navigation-main'
    end
    @homepage_content_body_main_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.content-main'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.content-main'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'div.page-wrap > section > div'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.page-wrap > section > div'
      else '.content-main'
    end
    @homepage_content_footer_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'footer'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     'footer'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'footer'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'footer'
      else 'footer'
    end
    #navigation
    @navigation_menu_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.navigation-main'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.navigation-main'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.page-wrap > nav'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.page-wrap > nav'
      else '.navigation-main' 
    end
    @navigation_hovermenu_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.menu--list.menu--level-0'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/de/) then          '.menu--list.menu--level-0'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then     '.advanced-menu'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.advanced-menu'
      else '.menu--list.menu--level-0' 
    end
    @navigation_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.navigation-main'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.navigation-main'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.page-wrap > nav'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.page-wrap > nav'
      else '.navigation-main' 
    end
    @navigation_hovermenu_close_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'form > label'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'form > label'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then          '.menu--is-active > div.button-container > span > i'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then       '.menu--container.menu--is-active > div > span > i'
      else 'form > label'
    end
    @navigation_sidebar_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.sidebar--categories-navigation'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         '.sidebar--categories-navigation'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then          '.sidebar--categories-navigation'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then       '.sidebar--categories-navigation'
      else '.sidebar--categories-navigation'
    end
    @navigation_hover_breadcrumb_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.content--breadcrumb'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.content--breadcrumb'# maincategory is not on broadcrumb
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'section > nav > ul' 
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'section > nav > ul'
      else '.content--breadcrumb'
    end
    #links
    @links_account_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.entry--account'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.entry--account'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.entry--account'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.entry--account'
      else '.entry--account' 
    end
    @links_registration_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '#registration'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '#registration'  
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '#registration'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#registration'
      else '#registration' 
    end
    @links_notes_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.entry--wishlist'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.entry--wishlist'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.entry--notepad'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.entry--notepad'
      else '.entry--wishlist'
    end
    @links_note_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.note--content'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.note--content'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.note--content'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.note--content'
      else '.note--content'
    end
    @links_cart_symbol_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.entry--cart'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.entry--cart'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.entry--cart'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.entry--cart'
      else '.entry--cart'
    end
    @links_cart_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.button--open-basket'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.button--open-basket'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.button--open-basket'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.button--open-basket'
      else '.button--open-basket'
    end
    @links_cart_sidebar_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  '.container--ajax-cart'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.container--ajax-cart'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      '.container--ajax-cart.off-canvas.is--right.is--active.is--open'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.container--ajax-cart.off-canvas.is--right.is--active.is--open'
      else '.container--ajax-cart'
    end
    @links_service_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'div.navigation--entry.entry--service'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     ':nth-child(3) > nav > ul > li:nth-child(1) > a'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'div.navigation--entry.entry--service'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.navigation--entry.entry--service'
      else 'div.navigation--entry.entry--service' 
    end
    @links_context_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'div.navigation--entry.entry--service.has--drop-down.js--is--dropdown-active > ul'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '.navigation--entry.is--active.has--sub-categories'        
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/de/) then      'div.navigation--entry.entry--service.has--drop-down.js--is--dropdown-active > ul'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.navigation--entry.entry--service.has--drop-down.js--is--dropdown-active > ul'
      else '.navigation--entry.is--active.has--sub-categories' 
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
      else '.product--header'
    end
    @search_results_path = case 
      when ENV['SHOP'].match(/Hchefworks/) && ENV['COUNTRY'].match(/de/) then      ''
      when ENV['SHOP'].match(/hpulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  ''
      when ENV['SHOP'].match(/hexport/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   ''
      else '.search--results'
    end
    #direct_ordering
    @direct_ordering_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'a.topbar-directOrder'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.header--directOrder'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'not available'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'not available'
      else 'a.topbar-directOrder' 
    end
    @direct_ordering_form_sku_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.emgroup-direct-order-searchterm-column > input'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.emgroup-direct-order-searchterm-column > input'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'not available'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'not available'
      else '.emgroup-direct-order-searchterm-column > input' 
    end
    @direct_ordering_form_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'form > button.emgroup-direct-order-submit.btn.right.is--icon-left'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'form > button.emgroup-direct-order-submit.btn.right.is--icon-left'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'not available'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'not available'
      else 'form > button.emgroup-direct-order-submit.btn.right.is--icon-left'
    end
    @direct_ordering_sidebar_item_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.item--container > div > a'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.item--container > div > a'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'not available'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'not available'
      else 'div.item--container > div > a'
    end
    #product_page.rb
    @product_page_buybutton_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.detail--block--value > form > div > button'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'form > div > button'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.product--buybox.block > div > form > div > button'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div > div > button'
      else 'form > div > button'
    end
    @product_page_infobox_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.is--active.is--open'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.is--active.is--open'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.is--active.is--open'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.is--active.is--open'
      else '.is--active.is--open'
    end
    @product_cart_productinfo_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.panel--td.table--content'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.panel--td.table--content'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.panel--td.table--content'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.panel--td.table--content'
      else 'div.panel--td.table--content'
    end
    @product_page_productname_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'header > div > h1'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'header > div > h1'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'header > div > h1'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'header > div > h1'
      else 'header > div > h1' 
    end
    @product_page_productpicture_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.product--image-container.image-slider.no--thumbnails > div > div > div > span > span > img'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.product--image-container.image-slider.no--thumbnails > div > div > div > span > span > img'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.product--image-container.image-slider.product--image-zoom'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.product--image-container.image-slider.product--image-zoom'
      else '.product--image-container.image-slider.no--thumbnails > div > div > div > span > span > img'
    end
    @product_page_productconfig_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.product--buybox.block'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.product--buybox.block'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.product--buybox.block'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.product--buybox.block'
      else 'div.product--buybox.block' 
    end
    @product_page_productinfo_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.tab-menu--product.js--tab-menu'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.tab-menu--product'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.tab-menu--product.js--tab-menu'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.tab-menu--product.js--tab-menu'
      else 'is not defined' 
    end
    @product_page_productrecommodations_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.tab-menu--cross-selling'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.tab-menu--cross-selling'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.tab-menu--cross-selling'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.tab-menu--cross-selling'
      else 'div.tab-menu--cross-selling'
    end
    @product_page_productlast_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.last-seen-products'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.last-seen-products'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.last-seen-products'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.last-seen-products'
      else 'div.last-seen-products' 
    end
    @product_page_rememberbutton_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.cart--add-to-list'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.cart--add-to-list'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.link--notepad'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.link--notepad'
      else '.cart--add-to-list'
    end
    @product_page_heart_badge_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.js--modal.sizing--content'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.js--modal.sizing--content'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'li.navigation--entry.entry--notepad > a > span'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'li.navigation--entry.entry--notepad > a > span'
      else '.js--modal.sizing--content'
    end
    @product_page_comparebutton_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.action--compare'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.action--compare'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.action--compare'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.action--compare'
      else '.action--compare'
    end
    @product_page_compareicon_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.compare--quantity'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.compare--quantity'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.navigation--entry.entry--compare > i'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.navigation--entry.entry--compare > i'
      else '.compare--quantity'
    end
    @product_page_rate_ratebutton_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.tab-menu--product.js--tab-menu > div.tab--navigation > a:nth-child(2)'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.tab-menu--product.js--tab-menu > div.tab--navigation > a:nth-child(2)'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'a.action--link.link--publish-comment'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'a.action--link.link--publish-comment'
      else '.tab-menu--product.js--tab-menu > div.tab--navigation > a:nth-child(2)'
    end
    @product_page_rate_tab_menu = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.tab-menu--product.js--tab-menu > div.tab--navigation > a'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.tab-menu--product.js--tab-menu > div.tab--navigation > a'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.tab-menu--product.js--tab-menu > div.tab--navigation > a'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.tab-menu--product.js--tab-menu > div.tab--navigation > a'
      else 'div.tab-menu--product.js--tab-menu > div.tab--navigation > a'
    end  
    @product_page_rate_tab_rateflag = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   ':nth-child(2)'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      ':nth-child(2)'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then ':nth-child(2)'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    ':nth-child(2)'
      else ':nth-child(2)'
    end
    @product_page_rate_form = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#detail--product-reviews'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '#detail--product-reviews'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#detail--product-reviews'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#detail--product-reviews'
      else '#detail--product-reviews'
    end
    @product_page_viewed_tab_menu = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.tab-menu--cross-selling > div > div'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.tab-menu--cross-selling > div > div'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.tab-menu--cross-selling.js--tab-menu > div.tab--navigation > a'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.tab-menu--cross-selling.js--tab-menu > div.tab--navigation > a'
      else '.tab-menu--cross-selling > div > div' 
    end
    @product_page_viewed_tab_otherCustomer = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   ':nth-child(2)'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      ':nth-child(2)'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then ':nth-child(3)'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    ':nth-child(2)'
      else ':nth-child(2)'
    end
    @product_page_suggest_container = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.tab-menu--cross-selling > div > div:nth-child(2)'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.tab-menu--cross-selling > div > div:nth-child(2)'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.tab-menu--cross-selling.js--tab-menu > div.tab--navigation > a.tab--link.has--content.is--active'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.tab-menu--cross-selling.js--tab-menu > div.tab--navigation > a.tab--link.has--content.is--active'
      else '.tab-menu--cross-selling > div > div:nth-child(2)'
    end
    #product_cart ###################################################################################################################################################################
    @product_cart_article_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.compare--quantity'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.compare--quantity'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.panel.has--border'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.panel.has--border'
      else '.compare--quantity'
    end
    @product_cart_button_continue_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.table--content > a.content--title'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.table--content > a.content--title'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.continue-shopping--action'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.continue-shopping--action'
      else '.table--content > a.content--title'
    end
    @product_cart_remove_article_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.panel--td.column--actions > a'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.panel--td.column--actions > form > button > i'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.panel--td.column--actions > a'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.panel--td.column--actions > a'
      else 'div.panel--td.column--actions > a'
    end
    @product_cart_article_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.panel.has--border'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.panel.has--border'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.panel.has--border'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.panel.has--border'
      else 'div.panel.has--border'
    end
    @product_cart_article_details_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.table--tr.block-group.row--product.is--last-row'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.table--tr.block-group.row--product.is--last-row'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.table--tr.block-group.row--product.is--last-row'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.table--tr.block-group.row--product.is--last-row'
      else 'div.table--tr.block-group.row--product.is--last-row'
    end
    @product_cart_article_price_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.basket--footer > ul'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.basket--footer > ul'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.basket--footer > ul'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.basket--footer > ul'
      else 'div.basket--footer > ul'
    end
    @product_cart_article_voucher_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.panel--td.column--quantity.is--align-right'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.panel--td.column--quantity.is--align-right'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.panel--td.column--quantity.is--align-right'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.panel--td.column--quantity.is--align-right'
      else 'div.panel--td.column--quantity.is--align-right'
    end
    @product_cart_button_checkout_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'a.btn.btn--checkout-proceed.is--primary.right.is--icon-right.is--large'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.btn--checkout-proceed'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'a.btn.btn--checkout-proceed.is--primary.right.is--icon-right.is--large'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'a.btn.btn--checkout-proceed.is--primary.right.is--icon-right.is--large'
      else '.btn--checkout-proceed'
    end
    @product_cart_checkout_steps_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.steps--container.container'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'div.steps--container.container'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.steps--container.container'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.steps--container.container'
      else 'div.steps--container.container'
    end
    @product_cart_voucher_checkbox_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#add-voucher--trigger'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.add-voucher--form > div > input'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#add-voucher--trigger'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#add-voucher--trigger'
      else '.add-voucher--form > div > input'
    end
    @product_cart_voucher_input_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'form.table--add-voucher.add-voucher--form > div > input'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.add-voucher--form > div > input'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'form.table--add-voucher.add-voucher--form > div > input'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'form.table--add-voucher.add-voucher--form > div > input'
      else 'form.table--add-voucher.add-voucher--form > div > input'
    end
    @product_cart_voucher_button_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'form.table--add-voucher.add-voucher--form > div > button'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'form.table--add-voucher.add-voucher--form > div > button'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'form.table--add-voucher.add-voucher--form > div > button'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'form.table--add-voucher.add-voucher--form > div > button'
      else 'form.table--add-voucher.add-voucher--form > div > button'
    end
    @product_cart_order_sku_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'not available'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'not available'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.panel.has--border > div > form > input'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.panel.has--border > div > form > input'
      else 'is not defined' 
    end
    @product_cart_order_button_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'not available'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'not available'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.panel.has--border > div > form > button'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.panel.has--border > div > form > button'
      else 'is not defined' 
    end
    #account ########################################################################################################################################################
    @account_registerform_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#registration'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#registration'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#registration'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#registration'
      else '#registration'
    end 
    @account_registerform_prefix_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.register--personal > div > div.register--salutation.field--select'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '.register--personal > div > div.register--salutation.field--select'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.register--personal > div > div.register--salutation.field--select'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.register--personal > div > div.register--salutation.field--select'
      else '.register--personal > div > div.register--salutation.field--select'
    end 
    @account_registerform_firstname_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#firstname'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '#firstname'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#firstname'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#firstname'
      else '#firstname'
    end 
    @account_registerform_lastname_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#lastname'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#lastname'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#lastname'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#lastname'
      else '#lastname'
    end 
    @account_registerform_department_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_department'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_department'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#register_billing_department'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#register_billing_department'
      else '#register_billing_department'
    end     
    @account_registerform_taxid_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/it/) then         '#register_billing_emgroup_commercial_register_nr'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/nl/) then         '#register_billing_emgroup_commercial_register_nr'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/no/) then         '#register_billing_emgroup_commercial_register_nr'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/se/) then         '#register_billing_emgroup_commercial_register_nr'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'taxid_path_p'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'taxid_path'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'taxid_path'
      else 'is not defined' 
    end 
    @account_registerform_taxvat_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/de/) then         '#ustid'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/at/) then         '#ustid'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/it/) then         '#register_billing_vatid'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/fr/) then         '#register_billing_vatid'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/be/) then         '#register_billing_vatid'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/no/) then         '#ustid'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/se/) then         '#register_billing_vatid'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/nl/) then         '#ustid'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/be/) then         '#ustid'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/es/) then         '#register_billing_vatid'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/de/) then            '#ustid'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#register_billing_ustid'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#register_billing_ustid'
      else 'is not defined' 
    end 
    @account_registerform_email_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_personal_email'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_personal_email'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#register_personal_email'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#register_personal_email'
      else '#register_personal_email'
    end 
    @account_registerform_password_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_personal_password'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_personal_password'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#register_personal_password'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#register_personal_password'
      else '#register_personal_password'
    end 
    @account_registerform_phone_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#phone'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#phone'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#phone'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#phone'
      else '#phone'
    end 
    @account_registerform_company_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_company'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_company'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#register_billing_company'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#register_billing_company'
      else '#register_billing_company'
    end 
    @account_registerform_checkbox_company_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_emgroup_business_form_other'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_emgroup_business_form_other'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then nil
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    nil
      else 'is not defined' 
    end 
    @account_registerform_street_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#street'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#street'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#street'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#street'
      else '#street' 
    end
    @account_registerform_streetnumber_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#emgroup_house_number'#on int no live
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#emgroup_house_number'#on int no live
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then nil
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    nil
      else 'is not defined' 
    end
    @account_registerform_postcode_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#zipcode'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#zipcode'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#zipcode'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#zipcode'
      else '#zipcode'
    end 
    @account_registerform_city_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#city'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#city'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#city'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#city'
      else '#city'
    end 
    @account_registerform_country_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.panel.register--address > div > div.register--country.field--select'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.panel.register--address > div > div.register--country.field--select'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.panel.register--address > div > div.register--country.field--select'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.panel.register--address > div > div.register--country.field--select'
      else 'div.panel.register--address > div > div.register--country.field--select'
    end 
    @account_registerform_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.register--action > button'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.register--action > button'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.register--action > button'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.register--action > button'
      else 'div.register--action > button'
    end 
    @account_address_create_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--address'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--address'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '.account--address'
    end
    @account_address_prefix_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.address--salutation.field--select > .js--fancy-select'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.address--salutation.field--select > .js--fancy-select'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '.address--salutation.field--select > .js--fancy-select'
    end
    @account_address_firstname_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#firstname2'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#firstname2'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '#firstname2'
    end
    @account_address_lastname_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#lastname2'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#lastname2'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else 'is not defined' 
    end
    @account_address_phone_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#address_emgroup_shipping_phone'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#address_emgroup_shipping_phone'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '#address_emgroup_shipping_phone'
    end
    @account_address_company_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_company'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_company'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '#register_billing_company'
    end
    @account_address_street_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#street'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#street'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '#street'
    end
    @account_address_streetnumber_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#emgroup_house_number'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#emgroup_house_number'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '#emgroup_house_number'
    end
    @account_address_postcode_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#zipcode'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#zipcode'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '#zipcode'
    end
    @account_address_city_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#city'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#city'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '#city'
    end
    @account_address_standard_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#set_default_shipping'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#set_default_shipping'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '#set_default_shipping'
    end
    @account_address_country_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#country'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#country'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'xxx'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'xxx'
      else '#country'
    end
    @account_address_savebutton_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.address--form-actions > input'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.address--form-actions > input'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'not available'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'not available'
      else '.address--form-actions > input'
    end
    @account_accountpage_welcome_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--welcome.panel'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--welcome.panel'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.account--welcome.panel'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.account--welcome.panel'
      else '.account--welcome.panel'
    end 
    @account_accountpage_info_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--info'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--info'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.account--info'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.account--info'
      else '.account--info'
    end 
    @account_loginform_emailfield_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#email'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#email'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#email'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#email'
      else '#email'
    end 
    @account_loginform_passwordfield_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#passwort'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#passwort'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#passwort'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#passwort'
      else '#passwort'
    end     
    @account_loginform_registerbutton_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.register--login-action > button'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.register--login-action > button'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.register--login-action > button'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.register--login-action > button'
      else '.register--login-action > button'
    end 
    @account_userinfo_passwordchange_button_appear_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.btn--password'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.btn--password'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.btn--password'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.btn--password'
      else '.btn--password' 
    end 
    @account_userinfo_passwordchange_currentpassword_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#currentPassword'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#currentPassword'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#currentPassword'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#currentPassword'
      else '#currentPassword'
    end 
    @account_userinfo_passwordchange_newpassword_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#newpwd'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#newpwd'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#newpwd'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#newpwd'
      else '#newpwd'
    end     
    @account_userinfo_passwordchange_repeatnewpassword_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#newpwdrepeat'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#newpwdrepeat'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#newpwdrepeat'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#newpwdrepeat'
      else '#newpwdrepeat'
    end 
    @account_userinfo_passwordchange_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#account--password > form > div.panel--actions.is--wide > input'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#account--password > form > div.panel--actions.is--wide > input'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#account--password > form > div.panel--actions.is--wide > input'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#account--password > form > div.panel--actions.is--wide > input'
      else 'is not defined' 
    end 
    @account_userinfo_emailchange_button_appear_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.btn--email'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.btn--email'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.btn--email'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.btn--email'
      else 'is not defined' 
    end 
    @account_userinfo_emailchange_currentpassword_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#emailPassword'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#emailPassword'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#emailPassword'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#emailPassword'
      else 'is not defined' 
    end     
    @account_userinfo_emailchange_newmail_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#newmail'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#newmail'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#newmail'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#newmail'
      else 'is not defined' 
    end 
    @account_userinfo_emailchange_repeatnewmail_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#neweailrepeat'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#neweailrepeat'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#neweailrepeat'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#neweailrepeat'
      else '#neweailrepeat'
    end  
    @account_registerform_customernumber_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_customernumber'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_customernumber'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then nil
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    nil
      else '#register_billing_customernumber'
    end
    @account_userinfo_emailchange_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#account--email > form > div.panel--actions.is--wide > input'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#account--email > form > div.panel--actions.is--wide > input'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#account--email > form > div.panel--actions.is--wide > input'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#account--email > form > div.panel--actions.is--wide > input'
      else '#account--email > form > div.panel--actions.is--wide > input'
    end 
    @account_userinfo_success_hint_path  = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--success'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--success'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.account--success'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.account--success'
      else '.account--success'
    end 
    @account_accountinfo_menucontainer_logout_link_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.link--logout'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.link--logout'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.link--logout'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.link--logout'
      else '.link--logout'
    end     
    @account_accountinfo_payment_box_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--payment.account--box'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--payment.account--box'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.account--payment.account--box'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.account--payment.account--box'
      else '.account--payment.account--box'
    end 
    @account_accountinfo_paymentchange_button_appear_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.btn'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.btn'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.btn'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.btn'
      else '.btn'
    end 
    @account_payment_paymentoptions_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.register--payment'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.register--payment'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.register--payment'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.register--payment'
      else '.register--payment' 
    end 
    @account_payment_cashOnDelivery_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#payment_mean3'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/ch/) then         '#payment_mean5'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/fr/) then         '#payment_mean5'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/es/) then         '#payment_mean3'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '#payment_mean3'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#payment_mean3'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#payment_mean5'
      else 'is not defined' 
    end 
    @account_payment_change_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--actions > input'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--actions > input'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.account--actions > input'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.account--actions > input'
      else '.account--actions > input'
    end     
    @account_accountinfo_billaddress_box_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--billing.account--box'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--billing.account--box'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.account--billing.account--box'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.account--billing.account--box'
      else '.account--billing.account--box'
    end 
    @account_accountinfo_billaddresschange_button_appear_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   nil
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   nil
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'a:nth-child(2)'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'a:nth-child(2)'
      else 'is not defined' 
    end 
    @account_invoiceadresschange_form_prefix_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   nil
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   nil
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.panel.register--personal > div > div.register--salutation.field--select'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.panel.register--personal > div > div.register--salutation.field--select'
      else 'is not defined' 
    end 
    @account_invoiceadresschange_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   nil
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   nil
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.account--actions > input'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.account--actions > input'
      else 'is not defined' 
    end 
    @account_accountinfo_deliveraddress_box_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--shipping.account--box'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--shipping.account--box'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.account--shipping.account--box'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.account--shipping.account--box'
      else '.account--shipping.account--box'
    end 
    @account_accountinfo_deliveraddresschange_button_appear_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div > a'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div > a'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  'a:nth-child(2)'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     'a:nth-child(2)'
      else 'div > a'
    end 
    @account_deliveradresschange_form_prefix_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.panel.register--shipping > div > div.register--salutation.field--select'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.panel.register--shipping > div > div.register--salutation.field--select'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.panel.register--shipping > div > div.register--salutation.field--select'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.panel.register--shipping > div > div.register--salutation.field--select'
      else '.panel.register--shipping > div > div.register--salutation.field--select'
    end 
    @account_deliveradresschange_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--actions > input'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--actions > input'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.account--actions > input'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.account--actions > input'
      else '.account--actions > input'
    end 
    @account_newsletter_box_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   nil
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   nil
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#newsletter'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#newsletter'
      else 'is not defined' 
    end 
    @account_sidebar_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--menu > div > ul'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.account--menu > div > ul'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.account--menu > div > ul'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.account--menu > div > ul'
      else '.account--menu > div > ul'
    end
    #checkout
    @checkout_backbutton_path  = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.block-group > a'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.block-group > a'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.block-group > a'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.block-group > a'
      else '.block-group > a' 
    end
    @checkout_steps_container_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.steps--container.container'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.steps--container.container'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.steps--container.container'  
      else '.steps--container.container'
    end
    @checkout_agb_container_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.tos--box'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.tos--panel'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.tos--panel'
      else '.tos--box'
    end
    @checkout_billing_container_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.billing--panel'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.billing--panel'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.billing--panel'
      else '.billing--panel'
    end
    @checkout_shipping_container_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.shipping--panel'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.shipping--panel'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.shipping--panel'
      else '.shipping--panel'
    end
    @checkout_payment_container_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.payment--panel'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.payment--panel'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.payment--panel' 
      else '.payment--panel' 
    end
    @checkout_product_container_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.product--table'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.product--table'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.product--table'
      else '.product--table'
    end
    @checkout_orderbutton_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.actions--bottom > div > button'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.actions--bottom > div > button'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'button'
      else '.actions--bottom > div > button' 
    end
    @checkout_agb_box_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#sAGB'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#sAGB'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#sAGB'
      else '#sAGB'
    end
    @checkout_panel_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.panel.has--border'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'section > div > div > div > div > div.panel.has--border'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.panel.has--border'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.panel.has--border'
      else '.panel.has--border'
    end
    @checkout_checkout_proceed_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.btn--checkout-proceed'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.btn--checkout-proceed'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.btn--checkout-proceed'
      else '.btn--checkout-proceed'
    end
    @checkout_registerform_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#registration'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#registration'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#registration'
      else '#registration'
    end
    @checkout_registerform_prefix_path = case                                       
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.register--personal > div > div.register--salutation.field--select'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.register--personal > div > div.register--salutation.field--select'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.register--personal > div > div.register--salutation.field--select'
      else '.register--personal > div > div.register--salutation.field--select'
    end
    @checkout_registerform_firstname_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#firstname'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#firstname'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#firstname'
      else '#firstname'
    end
    @checkout_registerform_lastname_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#lastname'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#lastname'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#lastname'
      else '#lastname'
    end
    @checkout_registerform_department_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   nil
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#register_billing_department'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#register_billing_department'
      else 'is not defined' 
    end
    @checkout_registerform_taxvat_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#ustid'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#register_billing_ustid'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#register_billing_ustid'
      else '#ustid'
    end
    @checkout_registerform_customernumber_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_customernumber'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then nil
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    nil
      else '#register_billing_customernumber'
    end
    @checkout_registerform_email_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_personal_email'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#register_personal_email'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#register_personal_email'
      else '#register_personal_email'
    end
    @checkout_registerform_skip_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_personal_skipLogin'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#register_personal_skipLogin'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#register_personal_skipLogin'
      else '#register_personal_skipLogin'
    end
    @checkout_registerform_phone_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#phone'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#phone'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#phone'
      else '#phone'
    end
    @checkout_registerform_company_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#register_billing_company'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#register_billing_company'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#register_billing_company'
      else '#register_billing_company'
    end
    @checkout_registerform_street_path = case
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#street'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#street'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#street'
      else '#street'
    end
    @checkout_registerform_streetnumber_path = case  
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#emgroup_house_number'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then nil
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    nil
      else '#emgroup_house_number'
    end
    @checkout_registerform_postcode_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#zipcode'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#zipcode'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#zipcode'
      else '#zipcode'
    end
    @checkout_registerform_city_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#city'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#city'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#city'
      else '#city'
    end
    @checkout_registerform_country_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.panel.register--address > div > div.register--country.field--select'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.panel.register--address > div > div.register--country.field--select'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.panel.register--address > div > div.register--country.field--select'
      else 'div.panel.register--address > div > div.register--country.field--select'
    end
    @checkout_registerform_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   'div.register--action > button'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.register--action > button'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    'div.register--action > button'
      else 'div.register--action > button'
    end
    @checkout_payment_form_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.shipping-payment--information'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.shipping-payment--information'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.shipping-payment--information'
      else '.shipping-payment--information'
    end
    @checkout_paymentInAdvance_radio_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/es/) then         '#payment_mean3'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '#payment_mean5'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#payment_mean5'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#payment_mean5'
      else '#payment_mean5'
    end
    @checkout_payment_continue_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.table--actions.block > button'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.table--actions.block > button'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.table--actions.block > button'
      else '.table--actions.block > button'
    end
    @checkout_payment_delivery_standard_radio_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/de/) then         '#confirm_dispatch10'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/at/) then         '#confirm_dispatch12'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/ch/) then         '#confirm_dispatch14'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/it/) then         '#confirm_dispatch9'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/fr/) then         '#confirm_dispatch28'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/no/) then         '#confirm_dispatch24'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/se/) then         '#confirm_dispatch22'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/nl/) then         '#confirm_dispatch26'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/be/) then         '#confirm_dispatch18'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/es/) then         '#confirm_dispatch20'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '#confirm_dispatch9'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#confirm_dispatch9'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '#confirm_dispatch63'
      else 'is not defined' 
    end
    @checkout_order_success_teaser_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.finish--teaser'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.finish--teaser'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.finish--teaser'
      else '.finish--teaser'
    end
    @checkout_checkout_buy_button_path = case 
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.btn--checkout-proceed'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then   '.confirm--actions.table--actions.block > button'
      when ENV['SHOP'].match(/chefworks/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '.btn--checkout-proceed'
      when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then    '.btn--checkout-proceed'
      else '.btn--checkout-proceed'
    end
  end
end