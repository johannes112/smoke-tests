# language: en
@content
Feature: content

	As a developer,
	I want to know some technical facts of a website
  
  @content_server
	Scenario: check output
	  Given I am on the website
	  When I check the output of all servers of different webpage by visiting some links
