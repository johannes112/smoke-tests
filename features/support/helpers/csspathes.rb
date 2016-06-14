class Csspathes
  attr_accessor :filter_filterbar_path, :filter_categoryproducts_product_path, :hover_breadcrumb_path, 
  :servicesites_header_path, :servicesites_help_path, :servicesites_textbox, 
  :searchfield_input_path, :searchfield_confirm_button_path, :search_table_accordeontab_path, :search_table_row_path, 
  :direct_ordering_formular_path, :direct_ordering_sku_input_path, :direct_ordering_amount_input_path, :direct_ordering_confirm_button_path, :direct_ordering_popup_path, :direct_ordering_css_name_path, :direct_ordering_css_amount_path, 
  :product_cart_table_path, :product_cart_delete_button_path, :product_cart_deleted_article_path, :product_cart_table_path2, :product_cart_product_attributes_path, :product_cart_delivery_path, :product_cart_pack_path, :product_cart_pack_price_color_path, :product_cart_pack_price_reduced_path, :product_cart_pack_price_not_reduced_path, :product_cart_pack_quantity_path, :product_cart_subtotal_path, :product_cart_button_path, :product_cart_worth_table_path, :product_cart_worth_subtotal_path, :product_cart_worth_text_path, :product_cart_worth_shipping_path, :product_cart_worth_netto_path, :product_cart_worth_text_strong_path, :product_cart_worth_mwst_path, :product_cart_worth_gross_path, 
  :product_page_article_table_path,  :product_page_let_box_appear_path, :product_page_appeared_button_path, :product_page_input_amount_path, :product_page_confirm_button_path, :product_page_confirm_box_path, :product_page_article_name_path, :product_page_article_sku_path, :product_page_article_color_path, :product_page_article_size_path, :product_page_article_pack_content_path, :product_page_article_price_piece_path, 
  :registration_create_account_button_path, :registration_confirm_formular_button_path, :registration_input_email_path, :registration_input_password_path, :registration_confirm_button_path, :registration_create_account_subtitle_path, :registration_form_customernumber_path, :registration_form_email_input_path, :registration_form_password_input_path, :registration_form_password_confirm_input_path, :registration_form_company_input_path, :registration_form_prefix_selector_path, :registration_form_owner_firstname_input_path, :registration_form_owner_lastname_input_path, :registration_form_firstname_input_path, :registration_form_lastname_input_path, :registration_form_street_input_path, :registration_form_postcode_input_path, :registration_form_city_input_path, :registration_form_telephone_input_path, :registration_form_streetnumber_input_path, :registration_form_organumber_input_path, :registration_form_region_selector_path, :registration_form_taxvat_input_path, 
  :company_input_path, :owner_firstname_input_path, :owner_lastname_input_path, :prefix_selector_path, :customernumber_path, :firstname_input_path, :lastname_input_path, :street_input_path, :postcode_input_path, :city_input_path, :telephone_input_path, :email_input_path, :password_input_path, :taxvat_input_path, :organumber_input_path, :confirm_password_input_path, :confirm_form_billing_button_path, :streetnumber_input_path, :region_selector_path, :agreement_checkbox_path, :confirm_form_shipping_button_path, :payment_selector_path, :confirm_form_button_path, :guest_login_selector_path, :confirm_selection_button_path, :confirm_checkout_form_button_path, :confirm_billing_button_path, :registration_selector_path, :confirm_registration_button_path, :success_button_path, :transaction_ID_path,
  :filter_navigation_path, :filter_navigation_hovermenu_path
  
  def initialize
    #filter.rb
    @filter_filterbar_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#narrow-by-list'
    end
    @filter_categoryproducts_product_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'div.category-products'
    end
    #hover.rb
    @hover_breadcrumb_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'div.breadcrumbs'
    end
    #servicesite
    @servicesites_header_path = case 
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/de/) then               'body > div.wrapper > div > div.header-container > div.header > div.header-panel > div > div.footer-links'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/at/) then               'body > div.wrapper > div > div.header-container > div.header > div.header-panel > div > div.footer-links'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/ch/) then               'body > div.wrapper > div > div.header-container > div.header > div.header-panel > div > div.footer-links'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         'body > div.wrapper > div > div.header-container > div.header-tabbed > div.header-panel-tabbed > div.footer-links'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/de/) then           'body > div.wrapper > div > div.header-container.jde-header-container > div.header-panel > div.top_links > div.footer-links'#div.footer-links > ul > li:nth-child(1) > a
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then           'body > div.wrapper > div > div.header-container.jde-header-container > div.header-panel > div.top_links > div.footer-links'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then           'div.top_links > div.footer-links'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     'body > div.wrapper > div > div.header-container > div.header-tabbed > div.header-panel-tabbed > div.footer-links'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'body > div.wrapper > div > div.header-container > div.header-panel > div.top_links > div.footer-links'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      'body > div.wrapper > div.page > div.header-container > div.header-tabbed > div.header-panel.header > div.footer-links'
    end
    @servicesites_help_path = case 
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/ch/) then           ' > ul > li:nth-child(4) > a'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/es/) then           ' > ul > li:nth-child(6) > a'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/fr/) then           ' > ul > li:nth-child(3) > a:nth-child(2)'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/be/) then           ' > ul > li:nth-child(3) > a:nth-child(2)'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/lu/) then           ' > ul > li:nth-child(3) > a:nth-child(2)'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/nl/) then           ' > ul > li:nth-child(3) > a:nth-child(2)'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     ' > ul > li:nth-child(3) > a'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/de/) then       ' > ul > li:nth-child(1) > a'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then       ' > ul > li:nth-child(1) > a'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then       ' > ul > li:nth-child(2) > a'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/es/) then       ' > ul > li:nth-child(6) > a'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/it/) then       ' > ul > li:nth-child(5) > a'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/fr/) then       ' > ul > li:nth-child(3) > a:nth-child(2)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/be/) then       ' > ul > li:nth-child(3) > a:nth-child(2)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/lu/) then       ' > ul > li:nth-child(3) > a:nth-child(2)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/nl/) then       ' > ul > li:nth-child(3) > a:nth-child(2)'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then ' > ul > li:nth-child(3) > a'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/ch/) then   ' > ul > li:nth-child(2) > a'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then ' > ul > li:nth-child(1) > a'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then  ' > ul > li:nth-child(4) > a'
    end
    @servicesites_textbox = case 
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/es/) then               '#col3_content'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         '#col3_innen'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then     '#col3_content'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#col3_content'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/at/) then            'body > div.wrapper > div > div.cont > div.main.col1-layout > div'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then      '#oben'
    end
    #search.rb
    @searchfield_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#search'
    end
    @searchfield_confirm_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#search_mini_form > div > button'
    end
    @search_table_accordeontab_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#standardset > div.a-item > table'
    end
    @search_table_row_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '.grouped-product-row'
    end
    #direct_ordering.rb
    @direct_ordering_formular_path = case
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/de/) then 'div.quick-access > div > span'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/at/) then 'div.quick-access > div > span'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/ch/) then 'div.quick-access > div > span'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.header-panel.header > div > div > div > span'
      when ENV['SHOP'].match(/pulsiva/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.header-panel.header > div > div > span'
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/de/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/at/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/ch/) then 'span.direct-order'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.header-panel.header > div > div > div > span'
    end
    @direct_ordering_sku_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#direct-shoping > div > ul > li:nth-child(2) > div.input-box.input-box-large.ajax-order-input > input'
    end
    @direct_ordering_amount_input_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#direct-shoping > div > ul > li:nth-child(2) > div:nth-child(2) > input'
    end
    @direct_ordering_confirm_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#send2 > span > span'
    end
    @direct_ordering_popup_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#dynamicTopCartContent'
    end
    @direct_ordering_css_name_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#cart-sidebar > li > div > p'
    end
    @direct_ordering_css_amount_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#cart-sidebar > li > div > div.dynamictopcart-product-amount'
    end
    #product_cart
    @product_cart_table_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#shopping-cart-table > tbody > tr.first.odd'
    end
    @product_cart_delete_button_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'td.a-center.last > a'
    end
    @product_cart_deleted_article_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#shopping-cart-table > tbody'
    end  
    @product_cart_table_path2 = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else '#shopping-cart-table > tbody > tr'
    end
    @product_cart_product_attributes_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'td:nth-child(2)'
    end
    @product_cart_delivery_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'td:nth-child(3)'
    end
    @product_cart_pack_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'td:nth-child(4) > ul > li'
    end
    @product_cart_pack_price_color_path = case ENV['COUNTRY']
      when 'COUNTRY' then ''
      else 'span.cart-price-colored'
    end
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
    @filter_navigation_hovermenu_path = case
      when ENV['SHOP'].match(/hotelwaesche/) && ENV['COUNTRY'].match(/[a-z]{2}/) then '#nav > :hover > .level0.shown-sub > :first-child'
      when ENV['SHOP'].match(/jobeline/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         '#nav > :hover > .level0.shown-sub > :first-child'
      when ENV['SHOP'].match(/vega/) && ENV['COUNTRY'].match(/[a-z]{2}/) then         '#nav > :hover > .level0.shown-sub > :first-child'
      else '#nav > :hover > .level0.shown-sub'
    end
  end
end