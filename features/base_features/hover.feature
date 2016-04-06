@hover
Feature: hovermenu

	As a customer
	I want to be able to use the menu for navigating to a product

	Scenario: use hovermenu for navigating
		Given I am on the website
		When I navigate to the category on the menu
		Then I should be on the categorysite