# language: en
@export
@chefworks
@checkout
Feature: checkout

	As a customer,
	I want to be able to order my favorite products

  @checkout_with
	Scenario: checkout with existing account
		Given I am logged in
		And the product cart contains an article
		And I am on the checkout page
		When I send my order with existing account
		Then Shopware should have my order

  @checkout_without
	Scenario: checkout without existing account and without creating an account
		Given the product cart contains an article
		And I am on the checkout page
		When I send a correctly filled checkout formular without existing account and without creating an account
		Then Magento should have my order

  @checkout_create
	Scenario: checkout without existing account and with creating an account
		Given the product cart contains an article
		And no user account with my data exists
		And I am on the checkout page
		When I send a correctly filled checkout formular without existing account and with creating an account
		Then Magento should have my order