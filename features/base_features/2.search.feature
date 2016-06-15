# language: en
@pulsiva
@export
@chefworks
@search
Feature: search

    As a customer
    i will be able to search for a specific product
    
    Scenario: search with sku
        Given I am on the website
        When I am for an product by entering the sku in the searchfield
        Then I should be on the detailsite of the related product
        