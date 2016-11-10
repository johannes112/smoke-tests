# language: en
@pulsiva
@export
@chefworks
@search
Feature: search

    As a customer
    i will be able to search for a specific product
    
    @search_sku
    Scenario: search with sku
        Given I am on the website
        When I am searching for a product by entering the sku in the searchfield
        Then I should be on the detailsite of the related product
    
    @search_number
    Scenario: search with productnumber
        Given I am on the website
        When I am searching for a product by entering the productnumber in the searchfield
        Then I should see my product on the results of my search

    @search_name
    Scenario: search with name
        Given I am on the website
        When I am searching for products by entering the productname in the searchfield
        Then I should see my product on the results of my search
    
