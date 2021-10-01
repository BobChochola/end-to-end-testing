@BaseCase @Admin @Storefront @calendarSectionLanguageInCheckout @fixture-product @fixture-shop
Feature: Calendar section language in shop checkout page
  As a customer
  I can see the language of calendar section is depended on the language of the shop

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button
    
    Given I am on Customer Settings Page
    And I click on birthday checkout include
    And I click on update button

  Scenario: Language is English
    Given I am on Shop Product Index Page
    When I input "1st Product for Checkout" to search field
    Then 1st product of products list should contain '1st Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I click on birthday button
    Then I should see calendar table
    Then calendar table should contain "Mon"
    And ---ROLL BACK---
    Given I am on Shop Product Index Page
    When I click on cart button
    And I click on remove button
    Then cart panel should contain "Your Shopping Cart is empty."
    Given I am on Customer Settings Page
    And I click on birthday checkout include
    And I click on update button

  # due to SL-10001
  # Scenario: Language is Chinese
  #   Given I am on Shop Home Page
  #   When I select language dropdown option included '中文' of language dropdown
  #   Then message button should equal to "聯絡我們"
  #   And I click on shop all button
  #   Then I should be redirected to Shop Product Index Page
  #   When I input "1st Product for Checkout" to search field
  #   Then 1st product of products list should contain '1st Product for Checkout'
  #   And I click on 1st product of products list
  #   Then I should be redirected to Shop Product Show Page
  #   And I click on add to cart button
  #   Then I should see cart panel
  #   When I click on checkout button
  #   Then I should be redirected to Shop Cart Page
  #   And I click on proceed to checkout button
  #   Then I should be redirected to Shop Checkout Page
  #   When I click on birthday button
  #   Then I should see calendar table
  #   Then calendar table should contain "週一"
  #   And ---ROLL BACK---
  #   Given I am on Shop Product Index Page
  #   When I click on cart button
  #   And I click on remove button
  #   Then cart panel should contain "Your Shopping Cart is empty."
  #   Given I am on Customer Settings Page
  #   And I click on birthday checkout include
  #   And I click on update button