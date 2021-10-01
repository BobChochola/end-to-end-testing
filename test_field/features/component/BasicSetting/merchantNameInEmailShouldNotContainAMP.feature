@BaseCase @Admin @Storefront @BasicSetting @merchantNameInEmailShouldNotContainAMP @fixture-product @fixture-payment @fixture-delivery @fixture-shop @EAT-1258
Feature: Merchant Name In Email Should Not Contain amp
  As a merchant
  I should not see shop name in email contain amp

  Background:
    Given I am on Admin Login Page
    And I fill correct account email to email field
    And I fill correct account password to password field
    And I click on login button
    Then I should see successful login
    Then I check intercom message notification frame and click clear intercom message button
    Then I check intercom message notification frame and click intercom message close button
    When I check new feature alert notification frame and click new feature alert close button
    When I check and click no thanks button

  Scenario: Merchant Name In Email Should Not Contain amp
    Given I am on Basic Setting Page
    And I fill dirty shop name to shop name field
    And I click on basic info update button
    And I should be redirected to Dashboard Page

    Given I am on Shop Home Page
    When I click on message button
    Then I should see message popup
    When I fill 'testuser@shoplineapp.com' to pop-up email field
    And I fill 'message' to pop-up message field
    And I click on pop-up send button

    Given I am on Dashboard Page
    When I click on side menu items included 'Message Center'
    And I switch to 2 of tabs
    Then I should be redirected to Message Center Page
    Then I click on 1st row of message list
    And latest message content should contain 'message'
    When I fill 'reply' to message field
    When I click on send button

    Given I am on Shop Product Index Page
    When I input "2nd Product for Checkout" to search field
    Then I should see product of products list
    Then 1st product of products list should contain '2nd Product for Checkout'
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on increase button
    When I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill email to email address field
    And I check contact number field and fill phone
    And I check and click save number checkbox
    And I click on same as checkbox
    And I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    Then I mark the value of order confirm info as variable order info

    Given I am on Orders Page
    Then 1st row of order links should contain order number
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    And I fill 'customer comment' to customer comments field
    And I click on send button
    And I click on reminder ok button
    And I select Confirmed of order status dropdown
    And I click on send notification checkbox
    And I click on yes button
    When I click on split button
    Then I should be redirected to Order Split Page
    And I fill '1' to row of split quantity field
    And I click on split button
    Then I should see confirm popup
    And I click on send child email checkbox
    And I click on confirm button
    Then I should be redirected to Orders Page

    And I wait for 30 seconds for mail sent
    Given I am on Google Mail Page
    Then I should see account field
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input dirty shop name to search field
    Then I should see row of mail list
    Then 1st row of mail title should not contain 'amp'
    Then 2nd row of mail title should not contain 'amp'
    Then 3rd row of mail title should not contain 'amp'
    Then 4th row of mail title should not contain 'amp'
    Then 5th row of mail title should not contain 'amp'
    Then 6th row of mail title should not contain 'amp'
    Then 7th row of mail title should not contain 'amp'
    And ---ROLL BACK---
    Given I am on Basic Setting Page
    And I fill real shop name to shop name field
    And I click on basic info update button