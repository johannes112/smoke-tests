# shopware_tests
##Automated Feature Testing 
This is functional testing for webshops of pulsiva, export, chefworks.

###Following **test-cases/features** exists:
- website basics (website_elements, navigation, )
- search
- product_page
- product_cart
- account (contains registration)
- checkout

#### website_basics
  - website-elements
    : check for basic elements via css-pathes 
  - navigation
    - hovermenu
      : check possibility of navigating with hovering
    - standartmenu
      : check possibility of navigating with menu
    - links
      - check internal links
        - link to account
        - link to cart
        - link to note
        - link to help
- TODO:      on pulsiva be-fr & be-nl & ch-fr & ch-de - check button to change language
- TODO:      - check external links

#### search
  - search by sku
    : look for availibility of given sku
TODO:  - search by name

#### direct_ordering
  - add an artcle 

#### product_page
  - notice an article
  - compare an article
  - add an article
  - display data of an article
  - rate an article
    - rate by clicking tab
    - rate by clicking button
  - check visibility of related articles

#### product_cart
  - continue shopping
  - add article additionally
  - enter voucher 
  - remove article
  - show data of article
  - navigate to checkout

#### account
  - registration
    : create new account
  - login
    : log in to account
  - update
    : modify data of account
    - userinfo
      : change info of user
    - payment
      : change data of payment
    - bill
      : change data of invoice
    - delivery
      : change data of delivery
  - newsletter
    : change settings for newsletter
  -links
    : test links on the accountsite

#### checkout
  - with
    : checkout with an existing account
  - without
    : checkout as an unregistered user
  - registration
    : register and checkout an user

##### Following tags exist:
To start different tests on each mandant navigate via tags:
- @pulsiva
- @export
- @chefworks
- @website_basics
- @website_elements
- @navigation
- @menu
- @hovermenu
- @standardmenu
- @menu
- @links
- @search
- @direct_order
- @product_page
- @product_page_compare 
- @product_page_add
- @product_page_data
- @product_page_rate   
- @product_page_suggest
- @product_cart
- @product_cart_continue
- @product_cart_add
- @product_cart_voucher
- @product_cart_remove
- @product_cart_data
- @product_cart_checkout
- @account
- @account_registration
- @account_login
- @account_update
- @account_invoice
- @account_delivery
- @account_newsletter
- @account_links
- @checkout
- @checkout_with
- @checkout_registration
- @checkout_without

###### to start tests:
Syntax (bash-shellaufruf): bash run_cucumber.sh <testenviroment-system> <apiuser> <apikey> <sauceuser> <saucekey> <test-system> <testshop> <country> <tag>
bash run_cucumber.sh saucelabs <shopware_apiuser_name> <shopware_apiuser_key> <saucelabs_user_name> <saucelabs_api_key> int chefworks de @chefworks
bash run_cucumber.sh saucelabs <shopware_apiuser_name> <shopware_apiuser_key> <saucelabs_user_name> <saucelabs_api_key> int pulsiva at @pulsiva
bash run_cucumber.sh saucelabs <shopware_apiuser_name> <shopware_apiuser_key> <saucelabs_user_name> <saucelabs_api_key> int export de @export
