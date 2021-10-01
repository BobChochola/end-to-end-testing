@BaseCase @Admin @Admin @Storefront @Checkout @Message @ordersPageTurnBlack
@fixture-shop @fixture-product @fixture-delivery @fixture-payment

Feature: orders message filters if contains has '<>'
  As a customer
  I want to message to merchant and filters '<>'

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
    When I mark the value of shop name field as variable shop name

  Scenario: orders message filters if contains has '<>'
    Given I am on Shop Product Index Page
    When I input "4th Product for Checkout" to search field
    Then 1st product of products list should contain '4th Product for Checkout'
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill email to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'

    When I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    When I fill name to name field
    And I fill phone to contact number field
    And I click on save number checkbox
    And I click on same as checkbox
    When I click on agree terms checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    And I scroll down to shop and customer comments field
    And I fill special shop message content to shop and customer comments field
    And I click on send button
    Then I should see message sender content
    Then I wait for 200 seconds for mail sent
    Given I am on Google Mail Page
    When I fill merchant email to account field
    And I click on identifier next button
    Then I should see password field
    When I input account password to password field
    And I check and click password next button
    Then I should see search field
    When I input shop name to search field
    Then I should see row of mail list
    When I click on row of mail list included 'has a new comment'
    Then I should see merchant reply button
    Then I click on merchant reply button
    When I switch to 2 of tabs
    Then I should be redirected to Orders Show Page
    And I scroll down to customer comments field
    And I should see order message content
    Then 1st order message content should contain special shop message content
    And I fill special admin message content to customer comments field
    When I click on send button
    Then I should see popover
    Then popover should contain 'A notification mail will be sent to customer at the same time, and cannot be edited afterward.'
    When I click on OK button
    Then 1st order message content should contain special admin message content
    Given I am on Shop Home Page
    When I click on member center button
    Then I should be redirected to Shop User Profile Page
    When I click on member center tab included 'Orders'
    Then I should be redirected to Shop Orders Page
    Then I click on 1st row of order links
    Then I should be redirected to Shop Orders Show Page
    Then 1st message recipient content should contain special admin message content