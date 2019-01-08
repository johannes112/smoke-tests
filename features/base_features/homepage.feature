# language: en

Feature: visibility

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
      Given I am on the website ""
      Then css elements should be modified by stylesheet

    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @visibility
    @homepage
    Scenario: check elements of homepage
      Given I am on the website "homepage"
      Then I should see all basic elements

    @pulsiva
    @vega
    @hotelwaesche
    @hw_jobeline
    @v_jobeline
    @visibility
    @productdetailpage
    Scenario: check for elements
      Given I am on the website "test-addtocart-735707?number=7357-07-1"
      Then I should see elements of pdp
