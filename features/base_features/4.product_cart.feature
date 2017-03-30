# language: en
@export
@product_cart
Feature: account

	As a customer,
	I want to be able to put a product into my cart
	in order to manage my chosen products

  @pulsiva
  @vega
  @hotelwaesche
  @hw_jobeline
  @v_jobeline
  @product_cart_continue
    Scenario: continue shopping
      When I add an article to my cart manually
	    When I click on the button to continue shopping
  	  Then I will see the back on the productsite
	 
	@chefworks 
	@product_cart_add
    Scenario: add article additionally
      Given I am on the website
      When I add an article to my cart by ajax
      And the product cart contains an article
	    When I enter a sku into the integrated field on the cart
  	  Then I will see the add-action in the url
	 
  @chefworks
  @pulsiva
  @product_cart_voucher
    Scenario: enter a code of a voucher
      Given I am on the website
      When I add an article to my cart by ajax
      And the product cart contains an article
	    When I activate the function for voucher
	    And I enter some code into the optional field
  	  Then there should be the voucher-action in the url
	
	@chefworks
	@pulsiva 
	@vega
	@hotelwaesche
	@hw_jobeline
	@v_jobeline
  @product_cart_remove
    Scenario: remove an article
      Given I am on the website
      When I add an article to my cart by ajax
      Then the product cart contains an article
	    When I remove this article from the product cart
  	  Then the cart should not contain this article 

  @chefworks
  @pulsiva
  @vega
  @hotelwaesche
  @hw_jobeline
  @v_jobeline
  @product_cart_data
    Scenario: display articles with data
      Given I am on the website
      When I add an article to my cart by ajax
      And the product cart contains an article
      Then I should see all necessary informations about this article within the product list of the product cart

  @chefworks
  @vega
  @hw_jobeline
  @v_jobeline
  @hotelwaesche
  @quickies
  @product_cart_checkout
	  Scenario: navigate to checkout
	    Given I am on the website
      When I add an article to my cart by ajax
	    And the product cart contains an article
	    When I navigate to the checkout by clicking the button which navigates to the checkout
	    Then I should be on the checkout-page