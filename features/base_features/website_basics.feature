# language: en
@website_basics
Feature: website_basics

    As a customer
    i will be able 
    to see all elements of the website and 
    to use all navigation elements
    
    Background:
      Given I am on the website
    
    @website_elements
    Scenario: check for elements
        Then I should be a basic elements
    
    @navigation
    @menu
    @hovermenu    
    Scenario: use hovermenu for navigating
		When I navigate to the category with the hovermenu
		Then I should be on the categorysite
		
    @navigation
    @menu
    @standardmenu    
    Scenario: use menu for navigating
		When I navigate to the category with the menu
		Then I should be on the categorysite
    
    @navigation
    @links
    Scenario: navigate to account
        When I click the link to my account
        Then I should be on the accountpage
        
    @navigation
    @links
    Scenario: navigate to note
        When I click the link to my notes
        Then I should be on the notepage
        
    @navigation
    @links
    Scenario: navigate to cart
        When I click the link to the cart
        Then I should see the product_cart

    @navigation
    @links
    Scenario: navigate to cart
        When I click the link of help
        Then I should see a contextmenu
