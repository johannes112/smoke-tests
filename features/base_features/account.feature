# language: en
@export
@chefworks
@account
Feature: account

	As a customer,
	I want to be able to use an account
	in order to manage my user data

  Background:
    Given I am on the registration page

	
  @account_registration
	Scenario: create new account
		And no user account with my email exists
		When I create a new account with my data
		Then I should be on my account page

  @account_login
	Scenario: login with existing account
		And I already created an user account
		When I login with valid informations
		Then I should be on my account page

  @account_update
  @account_userinfo
	Scenario: modify userinfo in my account
		Given I am logged in
		When I modify my userinfo
		Then I should see a confirmation hint
		
  @account_update
  @account_payment
	Scenario: modify payment in my account
		Given I am logged in
		When I modify my paymentinfo
		Then I should see a confirmation hint
		
	@account_update
  @account_invoice
	Scenario: modify adress of invoice
		Given I am logged in
		When I modify my address for my bill
		Then I should see a confirmation hint
		
	@account_update
  @account_delivery
	Scenario: modify adress of delivery
		Given I am logged in
		When I modify my address for my delivery
		Then I should see a confirmation hint

	@account_newsletter
  Scenario: change settings of newsletter
		Given I am logged in
		When I activate the newsletterbox
		Then I should see a confirmation hint
		
	@account_links
  Scenario: test links of the accountsite
		Given I am logged in
		When I get all items of the sidebar
  