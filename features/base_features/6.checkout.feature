# language: en
@pulsiva
@vega
@v_jobeline
@hotelwaesche
@hw_jobeline
@export
@chefworks
@checkout
Feature: checkout

	As a customer,
	I want to be able to order my favorite products
  
  @checkout_with
	Scenario: checkout with existing account
	  Given I already created an user account
	  Given I am logged in
	  When I add an article to my cart by ajax
	  Then the product cart contains an article
	  And I am on the checkout page
	  When I send my order
	  Then Shopware should have my order
	  And no user account with my email exists

  
  @checkout_registration
	Scenario: checkout without existing account and create an account
	  Given no user account with my email exists
	  Given I am on the website
	  When I add an article to my cart by ajax
	  And the product cart contains an article
	  When I go to the checkout
	  And I register a new account with my data
	  And I set payment and shipping
	  When I send my order
	  Then Shopware should have my order
	  And no user account with my email exists

  @checkout_without
	Scenario: checkout without existing account and without creating an account
	  Given I am on the website
	  When I add an article to my cart by ajax
	  And the product cart contains an article
	  When I go to the checkout
	  When I fill out a register form and send it without creating an account
	  When I set payment and shipping
	  When I send my order
	  Then Shopware should have my order
	  And no user account with my email exists
