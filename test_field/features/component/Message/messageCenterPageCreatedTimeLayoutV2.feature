@BaseCase @Admin @Storefront @Message @messageCenterPageCreatedTimeLayoutV2 @theme-kingsman @fixture-shop @fixture-delivery @fixture-payment
Feature: Check message created time incrementally
  As a merchant & customer
  news messages in chronological order

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

    Given I am on Basic Setting Page
    And I click on basic info update button
    Then I should be redirected to Dashboard Page

  @EAT-635 @EAT-635-1
  Scenario: Check orders message created time incrementally
    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page
    Given I am on Shop Product Index Layout V Two Page
    When I hover over search icon
    When I input "16th Product for Checkout" to search field
    Then 1st kingsman product of products list should contain '16th Product for Checkout'
    When I click on 1st kingsman product of products list
    Then I should be redirected to Shop Product Show Layout V Two Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Layout V Two Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Layout V Two Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Layout V Two Page
    When I fill "123" to shop and customer comments field
    And I click on send button
    Then I should see message sender content
    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    Then I click on tab included 'Order Message'
    Then I should see row of message list
    And I click on row of message list included '123'
    Then I should see message area
    # message canter 導頁問題，等改回導到w0再改回用click on order link
    # When I click on order link
    # And I switch to 3 of tabs
    # Then I should be redirected to Orders Show Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then 1st order message content should contain "123"
    When I fill "come on" to customer comments field
    When I click on send button
    When I click on custom item save button
    Then 1st order message content should contain "come on"
    Given I am on Shop Orders Layout V Two Page
    When I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Layout V Two Page
    Then I scroll down to customer comments content
    Then 1st customer comments content should contain "123"
    Then 2nd customer comments content should contain "come on"
    And ---ROLL BACK---
    Given I am on Orders Page
    When I click on 1st row of order checkbox
    When I select Delete of bulk actions dropdown
    And I click on confirm checkbox
    And I click on OK button

   @EAT-635 @EAT-635-2
   Scenario: Check shop message created time incrementally
    Given I am on Shop Login Layout V Two Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Layout V Two Page
    Given I am on Shop Message Layout V Two Page
    When I fill message content to message field
    And I click on send button
    Then I should see sender message content
    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I click on row of message list
    Then I should see message area
    Then latest message content should contain "Woah new store! Congrats!"
    When I fill "come on" to message field
    When I click on send button
    Then latest message content should contain "come on"
    Given I am on Shop Message Layout V Two Page
    When I scroll down to send button
    Then last message content should contain "come on"
    Then second-last message content should contain "Woah new store! Congrats!"