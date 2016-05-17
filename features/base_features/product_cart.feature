# language: en
@product_cart
Feature: account

	As a customer,
	I want to be able to put a product into my cart
	in order to manage my chosen products

  Background:
    Given the product cart contains an article
	And I am on the product cart page

  @product_cart_add
    Scenario: add article
	  When I enter a sku into the integrated field on the cart
	  Then I will see another url
	  
  @product_cart_voucher
    Scenario: enter a code
	  When I activate the funtion for voucher
	  And I enter some code into the optional field
	  Then there should be some actions
	  
  @product_cart_remove
    Scenario: remove an article
	  When I remove this article from the product cart
	  Then the cart should not contain this article 

  @product_cart_data
    Scenario: display articles with data
      Then I should see all necessary informations about this article within the product list of the product cart

  @product_cart_checkout
	Scenario: navigate to checkout
	  When I navigate to the checkout by clicking the button which navigates to the checkout
	  Then I should be on the checkout-page