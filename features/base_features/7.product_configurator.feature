@content
@jobeline
@product_configurator
Feature: product_configurator

	As a customer
	I want to have the opportunity to personalize a product with own content, by simply opening a form and entering my data

	Scenario: product_configurator
		Given I am on the website
		When I search for cook jacket
		And I insert data in the form of the configurator
		And I send the form
		Then I should see a confirmation page