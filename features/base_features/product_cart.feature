# language: en
@product_cart
Feature: account

	As a customer,
	I want to be able to put a product into my cart
	in order to manage my chosen products

  Background:
    Given the product cart contains an article
		And I am on the product cart page
  
  @product_cart_remove
	Scenario: remove an article
		When I remove this article from the product cart
		Then the cart should not contain this article 

	@product_cart_data
	Scenario: display articles with data
		Given the product cart contains an article
		And I am on the product cart page
		Then I should see all necessary informations about this article within the product list of the product cart

	@product_cart_checkout
	Scenario: navigate to checkout
		Given the product cart contains an article
		And I am on the product cart page
		When I navigate to the checkout by clicking the button which navigates to the checkout
		Then I should be on the checkout-page