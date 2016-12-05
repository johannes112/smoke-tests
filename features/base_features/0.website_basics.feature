# language: en
@website_basics
Feature: website_basics

    As a customer
    i will be able 
    to see all elements of the website and 
    to use all navigation elements
    
    Background:
      Given I am on the website

    @export
    @chefworks
    @pulsiva
    @vega
    @website_elements
    Scenario: check for elements
        Then I should be a basic elements

    @export
    @chefworks
    @pulsiva
    @vega
    @navigation
    @menu
    @hovermenu    
    Scenario: use hovermenu for navigating
		When I navigate to the category by the hovermenu
		Then I should be on the categorysite

    @export
    @chefworks	
    @pulsiva
    @navigation
    @menu
    @standardmenu    
    Scenario: use menu for navigating
		When I navigate to the category by the menu
		Then I should be on the categorysite
    
    
    @export
    @chefworks
    @pulsiva
    @vega
    @navigation
    @links
    Scenario: navigate to account
        When I click the link to my account
        Then I should be on the accountpage
        
    @export
    @chefworks
    @pulsiva
    @vega
    @navigation
    @links
    Scenario: navigate to note
        When I click the link to my notes
        Then I should be on the notepage
        
    @export
    @chefworks
    @pulsiva
    @vega
    @navigation
    @links
    Scenario: activate the cart
        When I click the link of the cart
        Then I should see the sidebar of the product cart
        When I click the link to edit the cart
        Then I should be on the page of the productcart

    @export
    @chefworks
    @pulsiva
    
    @navigation
    @links
    Scenario: navigate to help
        When I click the link of help
        Then I should see a contextmenu


    @chefworks
    @pulsiva
    @vega
    @navigation
    @link_checker
    Scenario: find all links
        When I check all links for correct country


    @pulsiva
    @language_changer
    Scenario: change the language
        When I change the language by clicking the button
        Then the url should has changed
        And the menu is in specific language

