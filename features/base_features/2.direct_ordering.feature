@pulsiva
@direct_ordering
Feature: direct ordering

	As a customer
	I want to have the opportunity to add an article to the cart, by simply opening a form and entering the sku and amount of this article

	Scenario: add an article
		Given I am on the website
		When I click the button for direct ordering
		And I send my inserted data with the form 
		Then I should see the sidebar of the product cart
		Then I should find the article in the sidebar