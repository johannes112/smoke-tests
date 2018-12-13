# language: en

Feature: website_basics

    As a customer
    i will be able
    to see all elements of the website 

    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @website_css
    Scenario: check for css
      Given I am on the website
      Then css elements should be modified by stylesheet
    
    @homepage
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    Scenario: check elements of homepage
      Given I am on the website "homepage"
      Then I should see all basic elements

    @categorypage
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    Scenario: check for elements of categorypage
      Given I am on the website "category"
      Then I should see all basic elements

    @subcategorypage
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @website_elements
    Scenario: check for elements of subcategorypage
      Given I am on the website "subcategory"
      Then I should see all basic elements

    @productdetailpage
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @website_elements
    Scenario: check for elements
      Given I am on the website 
      Then I should see all basic elements