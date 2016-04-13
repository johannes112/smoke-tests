@account
Feature: account

	As a customer,
	I want to be able to use an account
	in order to manage my user data

  Background:
    Given I am on the registration page
  
  @registration
	Scenario: create new account
		And no user account with my data exists
		When I create an new account with my data
		Then I should be on my account page

  @login
	Scenario: login with existing account
		Given I am on the registration page
		And I already created an user account
		When I login with valid informations
		Then I should be on my account page

  @update
	Scenario: modify data in my account
		Given I am logged in
		When I modify my address
		When I login with valid informations
		Then I should be on my account page