# language: en
@search
Feature: search

    As a customer
    i will be able to search for a specific product
    
    Scenario:
        Given I am on the website of vega
        When I am for an product by entering the sku in the searchfield
        Then I should be on the detailsite of the related product
        