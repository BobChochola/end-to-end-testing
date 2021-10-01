@BaseCase @Admin @Storefront @Message @messageCenterPageElementAndTypeCheck
@fixture-shop @fixture-delivery @fixture-payment @fixture-product @fixture-non-basket
Feature: shop checkout and check order message
  As a merchant
  I want to access my message center
  So I can check message index and the message type

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

  @C4084 @C4084-1
  Scenario: shop checkout and check order message
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info
    And I scroll down to shop and customer comments field
    And I fill "C4084" to shop and customer comments field
    And I click on send button
    Then I should see message sender content
    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I click on tab included "Order Message"
    Then I should see row of message list
    When I input order number to search field
    Then I should see 1 unread message dot
    Then row of customer name should contain name
    Then row of message should equal to "C4084"
    Then I should see time
    When I click on row of message list
    Then I should see order link
    # message canter 導頁問題，等改回導到w0再改回用click on order link
    # When I click on order link
    # And I switch to 3 of tabs
    # Then I should be redirected to Orders Show Page
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I should see order message content

  @C4084 @C4084-2
  Scenario: customer send message and check general message
    Given I am on Shop Home Page
    When I click on message button
    Then I should see message popup
    When I fill new email to pop-up email field
    And I mark the value of pop-up email field as variable customer new email
    And I fill message content to pop-up message field
    And I click on pop-up send button
    Then I should be redirected to Shop Home Page
    Then I wait for 10 seconds for waiting mail
    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I input new email name only number to search field
    Then I should see 1 unread message dot
    And row of customer name should contain new email name
    And row of message should equal to message content
    And I should see time
    Then I click on 1st row of message list
    Then I should see message area
    And I should see latest message content