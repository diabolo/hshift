Feature: Buy one get one free
  In order to promote items and increase sales
  As a CEO
  I want to offer buy one get one free offers


Background:
  Given the product fruit tea
  And a buy one get one free on fruit tea
  
Scenario: Buy one item
  When I buy 1 fruit tea
  Then I should pay for 1 fruit teas
  
Scenario: Buy two items
  When I buy 2 fruit teas
  Then I should pay for 1 fruit teas

Scenario: Buy three items
  When I buy 3 fruit teas
  Then I should pay for 2 fruit teas

Scenario: Buy three items
  When I buy 4 fruit teas
  Then I should pay for 2 fruit teas




  
