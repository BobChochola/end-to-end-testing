@BaseCase @Admin @Storefront @Message @ExpressCheckoutPage @expressCheckoutWithDifferentVariation
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-promotion @fixture-non-basket
Feature: Checkout from express checkout pages
  As a customer
  I want to see express checkout pages
  So that i can place a order

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
    
    Given I am on Basic Setting Page
    And I mark the value of shop name field as variable shop name

  @C3858 @C3858-1
  Scenario: Send message to merchant on express checkout pages when product without price
    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    Then I click on skip the guide button
    Then I should see product picker
    When I input "Out Of Stock" to search field
    And I click on search button
    Then 1st product of product list should contain 'Out Of Stock'
    When I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    And I click on save page button
    Then I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page
    And I should see message button
    And I click on message button
    Then I should see message form
    And I fill email to email field
    And I fill message to message field
    And I click on send button
    Then I wait for 60 seconds for loading
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see search mail list
    When I click on row of mail list included "You got messaged on"
    Then mail detail should contain message
    Then I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 3 of tabs
    Then I should be redirected to Message Center Page
    And I should see row of message list
    Then row of customer name should contain name
    Then row of message should contain message
    And ---ROLL BACK---
    Given I am on Express Checkout Pages Page
    When I click on delete button
    And I should see delete confirmation popup
    And I click on reconfirm checkbox
    And I click on popup ok button
    Then I should not see delete confirmation popup

  @C3858 @C3858-2
  Scenario: Checkout with product sale price from express checkout page
    Given I am on Express Checkout Pages Page
    When I click on create button
    Then I should be redirected to Express Checkout Builder Page
    Then I should see skip the guide button
    When I click on skip the guide button
    Then I should see product picker
    When I input "4th Product for Checkout" to search field
    And I click on search button
    Then 1st product of product list should contain '4th Product for Checkout'
    When I click on 1st product of product list
    And I click on popup save button
    Then I should be on Express Checkout Builder Page
    And I click on save page button
    And I should see view page button
    And I click on view page button
    And I switch to 2 of tabs
    Then I should be on Shop Express Checkout Page
    And I click on add quantity button
    And unit product price should contain "$10"
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Local Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Cash on Delivery" of payment method dropdown
    And I wait for 3 seconds for loading
    When I click on buy now button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$30"
    And ---ROLL BACK---
    Given I am on Express Checkout Pages Page
    When I click on delete button
    And I should see delete confirmation popup
    And I click on reconfirm checkbox
    And I click on popup ok button
    Then I should not see delete confirmation popup