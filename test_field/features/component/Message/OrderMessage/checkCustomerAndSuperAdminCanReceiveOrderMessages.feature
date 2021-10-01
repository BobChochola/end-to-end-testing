@BaseCase @ImageService @Admin @Storefront @Checkout @Message @OrderMessage @checkCustomerAndSuperAdminCanReceiveOrderMessages
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-non-basket @premiumFeature
Feature: customer/super admin can receive order message sent from each other on message center
  As a super admin
  I want to send message
  So that customer can receive message

  Background:
    Given I am on Admin Login Page
    When I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    And I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click exclude products panel close button
    When I check and click no thanks button

  @EAT-1177 @EAT-1177-2
  Scenario: customer/super admin can receive order message sent from each other on message center
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "5" to product quantity field
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
    And I wait for 3 seconds for loading
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I mark the value of order confirm info as variable order info
    And I scroll down to shop and customer comments field
    And I fill 'customer comment' to shop and customer comments field
    And I click on send button
    Then I should see message sender content

    Given I am on Shop Login Page
    And I fill email to email field
    And I fill password to password field
    When I click on submit button
    Then I should be redirected to Shop Order Confirm Page

    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    When I click on tab included 'Order Message'
    And I input order number to search field
    Then I should see row of message list
    Then 1st row of message list should contain 'customer comment'
    Then 1st row of message list should contain order number
    When I click on 1st row of message list
    Then I should see message area
    When I fill 'super admin reply test' to message field
    When I pick message photo to image selector
    And I should see delete image button
    And I click on send button
    Then latest message content should contain 'super admin reply test'
    And I should see image content
    Then I should have image message photo for image content
    Then I wait for 100 seconds for mail sent

    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input order number to search field
    Then I should see row of mail list
    When I click on row of mail list included "has a new comment"
    Then I should see mail detail
    Then mail detail should contain 'super admin reply test'
    Then I should see mail image
    Then I should see info box button
    When I click on info box button
    Then row of info box list should not contain 'bcc'
    When I scroll down the page till the bottom
    And I click on customer reply button
    When I switch to 3 of tabs
    Then I should be redirected to Shop Orders Show Page
    Then I should see message recipient content
    Then message recipient content should contain 'super admin reply test'
    Then I should have image message photo for message image content