# language: en

Feature: website_basics

    As a customer
    i will be able
    to see all elements of the website

    @visibility
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @website_css
    Scenario: check for css
      Given I am on the website ""
      Then css elements should be modified by stylesheet

    @visibility
    @homepage
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    Scenario: check elements of homepage
      Given I am on the website "homepage"
      Then I should see all basic elements

    @visibility
    @productdetailpage
    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @website_elements
    Scenario: check for elements
      Given I am on the website "test-addtocart-735707?number=7357-07-1"
      Then I should see elements of pdp
