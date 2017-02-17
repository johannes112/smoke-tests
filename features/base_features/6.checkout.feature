# language: en
@checkout
Feature: checkout

	As a customer,
	I want to be able to order my favorite products
  
  Background:
    Given no user account with my email exists

  @checkout_with
	Scenario: checkout with existing account
	  Given I am logged in
	  And the product cart contains an article
	  And I am on the checkout page
	  When I send my order
	  Then Shopware should have my order
	  And no user account with my email exists

  @checkout_registration
	Scenario: checkout without existing account and create an account
	  And the product cart contains an article
	  When I go to the checkout
	  And I create a new account with my data
	  And I set payment and shipping
	  When I send my order
	  Then Shopware should have my order
	  And no user account with my email exists

  @checkout_without
	Scenario: checkout without existing account and without creating an account
	  And the product cart contains an article
	  When I go to the checkout
	  When I fill out a register form and send it without creating an account
	  When I set payment and shipping
	  When I send my order
	  Then Shopware should have my order
	  And no user account with my email exists
