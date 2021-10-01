@BaseCase @Admin @Storefront @Message @messageCenterPageCreatedTime @fixture-shop @fixture-delivery @fixture-payment @EAT-615 @fixture-non-basket
Feature: Check message created time incrementally
  As a merchant & customer
  news messages in chronological order

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

  @EAT-615 @EAT-615-1
  Scenario: Check orders message created time incrementally
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on shop all button
    Then I should be redirected to Shop Product Index Page
    When I input "16th Product for Checkout" to search field
    Then 1st product of products list should contain '16th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Custom" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
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
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then I scroll down to customer comments content
    Then 1st customer comments content should contain "123"
    Then 2nd customer comments content should contain "come on"
    And ---ROLL BACK---
    Given I am on Orders Page
    When I click on 1st row of order checkbox
    When I select Delete of bulk actions dropdown
    And I click on confirm checkbox
    And I click on OK button

   @EAT-615 @EAT-615-2
   Scenario: Check shop message created time incrementally
    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Home Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Messages'
    Then I should be redirected to Shop Message Page
    When I fill message content to message field
    And I click on send button
    Then I should see sender message content
    Given I am on Dashboard Page
    When I click on member center side menu
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I click on row of message list included "Woah new store! Congrats!"
    Then I should see message area
    Then latest message content should contain "Woah new store! Congrats!"
    When I fill "come on" to message field
    When I click on send button
    And I wait for 3 seconds for loading
    And I scroll down to latest message content
    Then latest message content should contain "come on"
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on tab included 'Messages'
    Then I should be redirected to Shop Message Page
    When I scroll down to send button
    Then last message content should contain "come on"
    Then second-last message content should contain "Woah new store! Congrats!"