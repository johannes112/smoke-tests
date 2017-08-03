# language: en
@website_basics
Feature: website_basics

    As a customer
    i will be able 
    to see all elements of the website and 
    to use all navigation elements
    
    Background:
      Given I am on the website

    @quickies
    @export
    @chefworks
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @website_elements
    Scenario: check for elements
        Then I should see all basic elements
        
    @export_mobile
    @chefworks_mobile
    @pulsiva_mobile
    @vega_mobile
    @hotelwaesche_mobile
    @hw_jobeline_mobile
    @v_jobeline_mobile
    @website_elements_mobile
    Scenario: check for elements
        Then I should see all basic mobile elements
        

    @export
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @navigation
    @menu
    @hovermenu    
    Scenario: use hovermenu for navigating
		When I navigate to an category by the hovermenu
		Then I should be on a subcategorysite

    @export
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @navigation
    @menu
    @standardmenu    
    Scenario: use menu for navigating
		When I navigate to a subcategory by the menu
		Then I should be on a subcategorysite
    
    @export_mobile
    @pulsiva_mobile
    @vega_mobile
    @hotelwaesche_mobile
    @hw_jobeline_mobile
    @v_jobeline_mobile
    @navigation_mobile
    @menu_mobile
    @standardmenu_mobile    
    Scenario: use menu for navigating
		When I navigate to a subcategory by touching the burgermenu
		Then I should be on a subcategorysite
    
    
    @export
    @chefworks
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @navigation
    @links
    Scenario: navigate to account
        When I click the link to my account
        Then I should be on the accountpage

    @chefworks_mobile
    @pulsiva_mobile
    @vega_mobile
    @hotelwaesche_mobile
    @hw_jobeline_mobile
    @v_jobeline_mobile
    @navigation_mobile
    @links_a_mobile
    Scenario: navigate to account
        When I touch the link to my account
        Then I should be on the accountpage for mobile 
        
        
    @export
    @chefworks
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @navigation
    @links
    Scenario: navigate to note
        When I click the link to my notes
        Then I should be on the notepage
        
    @chefworks_mobile
    @pulsiva_mobile
    @vega_mobile
    @hotelwaesche_mobile
    @hw_jobeline_mobile
    @v_jobeline_mobile
    @navigation_mobile
    @links_mobile
    Scenario: navigate to note
        When I click the link to my notes
        Then I should be on the notepage
        

    @export
    @chefworks
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @navigation
    @links
    Scenario: activate the cart
        When I click the link of the cart
        Then I should see the sidebar of the product cart
        When I click the link to edit the cart
        Then I should be on the page of the productcart
        
    @chefworks_mobile
    @pulsiva_mobile
    @vega_mobile
    @hotelwaesche_mobile
    @hw_jobeline_mobile
    @v_jobeline_mobile
    @navigation_mobile
    @links_mobile    
    Scenario: activate the cart
        When I click the link of the cart
        Then I should see the sidebar of the product cart
        When I click the link to edit the cart
        Then I should be on the page of the productcart


    @export
    @chefworks
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @navigation
    @links
    Scenario: navigate to help
        When I click the link of help
        Then I should see a contextmenu

    @chefworks_mobile
    @pulsiva_mobile
    @vega_mobile
    @hotelwaesche_mobile
    @hw_jobeline_mobile
    @v_jobeline_mobile
    @navigation_mobile
    @links_mobile
    Scenario: navigate to help
        When I click the link of help
        Then I should see a contextmenu
        
    
    @export
    @chefworks
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @navigation
    @link_checker
    Scenario: find all links
        When I check all links for correct country

    @pulsiva
    @vega
    @v_jobeline
    @navigation
    @href_checker
    Scenario: find all hrefs
        When I check all hreflang for correct url

    @pulsiva
    @vega
    @v_jobeline
    @hw_jobeline
    @hotelwaesche
    @language_changer
    Scenario: change the language
        When I change the language by clicking the button
        Then the url should has changed
        And the menu is in specific language

