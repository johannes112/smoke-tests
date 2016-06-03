# language: en
@export
@chefworks
@product_cart
Feature: account

	As a customer,
	I want to be able to put a product into my cart
	in order to manage my chosen products

  @product_cart_continue
    Scenario: continue shopping
      Given the product cart contains an article
	    When I click on the button to continue shopping
  	  Then I will see the back on the productsite
	  
	 @product_cart_add
    Scenario: add article
      Given the product cart contains an article
	    When I enter a sku into the integrated field on the cart
  	  Then I will see the add-action in the url
	 
  @product_cart_voucher
    Scenario: enter a code
      Given the product cart contains an article
	    When I activate the function for voucher
	    And I enter some code into the optional field
  	  Then there should be the voucher-action in the url
	  
  @product_cart_remove
    Scenario: remove an article
      Given the product cart contains an article
	    When I remove this article from the product cart
  	  Then the cart should not contain this article 

  @product_cart_data
    Scenario: display articles with data
      Given the product cart contains an article
      Then I should see all necessary informations about this article within the product list of the product cart

  @product_cart_checkout
	  Scenario: navigate to checkout
	    Given the product cart contains an article
	    When I navigate to the checkout by clicking the button which navigates to the checkout
	    Then I should be on the checkout-page