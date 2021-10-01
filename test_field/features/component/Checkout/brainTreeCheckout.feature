@BaseCase @Admin @Storefront @Checkout @brainTreeCheckout @fixture-payment @fixture-delivery @fixture-product @fixture-promotion @baseLocation-HK

Feature: Checkout decimal product via BrainTree
  As a HK customer
  I can checkout product with decimal via braintree

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

    Given I am on Promotion Index Page
    When I input "1st Promotion" to search field
    Then 1st row of promotion list should contain "1st Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C3838
  Scenario: I want to success checkout product with decimal
    Given I am on Shop Product Index Page
    When I input "3rd Product for Checkout" to search field
    Then 1st product of products list should contain "3rd Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "3" to product quantity field
    When I click on add to cart button
    Then I should see cart panel
    And I click on checkout button
    Then I should be redirected to Shop Cart Page
    When I select country dropdown option included "Hong Kong" of country list dropdown
    And I wait for 3 seconds for loading
    And I select delivery dropdown option included "Custom Delivery" of delivery method dropdown
    And I wait for 3 seconds for loading
    And I select payment dropdown option included "Braintree" of payment method dropdown
    And I wait for 3 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    Then order total should contain "HK$50.23"
    When I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I fill name to cardholder name field
    And I fill braintree fail card number to card number field
    And I fill expiry date to expiry date field
    And I fill cvc to cvc field
    And I click on agree terms checkbox
    And I click on place order button
    And I should see error alert
    Then error alert should equal to "Error With Payment Gateway"
    And ---ROLL BACK---
    Given I am on Shop Cart Page
    And I click on remove button
    Then I should see delete confirmation popover
    When I click on ok button
    Then I should see empty message
    Given I am on Promotion Index Page
    When I input "1st Promotion" to search field
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "1st Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item