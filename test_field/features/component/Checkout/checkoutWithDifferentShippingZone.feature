@BaseCase @Admin @Storefront @Checkout @checkoutWithDifferentShippingZone
@fixture-payment @fixture-delivery @fixture-product @fixture-shop @fixture-promotion
  Feature: Delivery by weight and different shipping zone
    As a customer
    I want to buy products from different zone
    So that I can pay correct shipping fee

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
    When I input "12th Promotion" to search field
    Then 1st row of promotion list should contain "12th Promotion"
    Then I should see apply filter label
    Then I should see row of select checkbox list
    And I click on 1st row of select checkbox list
    And I select publish of bulk actions dropdown
    Then I should see alert

  @C3860-1
  Scenario: I want to buy products from different zone and pay correct shipping fee
    Given I am on Shop Product Index Page
    When I input "6th Product for Checkout" to search field
    Then 1st product of products list should contain "6th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "2" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "(DBW) - LocalDelivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
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
    And I wait for 3 seconds for commit loading
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$104"
    Then discount applied should contain "12th Promotion"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Bank Transfer"
    Then delivery method should contain "(DBW) - LocalDelivery"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then delivery fee should contain "NT$10"
    Then total should contain "NT$104"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "12th Promotion" to search field
    Then 1st row of promotion list should contain "12th Promotion"
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

  @C3860-2
  Scenario: I want to buy products from different zone and pay correct shipping fee
    Given I am on Shop Product Index Page
    When I input "6th Product for Checkout" to search field
    Then 1st product of products list should contain "6th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "3" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included "(DBW) - LocalDelivery" of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
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
    Then delivery fee should contain "NT$15"
    Then total should contain "NT$157"
    Then discount applied should contain "12th Promotion"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Bank Transfer"
    Then delivery method should contain "(DBW) - LocalDelivery"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then delivery fee should contain "NT$15"
    Then total should contain "NT$157"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "12th Promotion" to search field
    Then 1st row of promotion list should contain "12th Promotion"
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item

  @C3860-3
  Scenario: I want to buy products from different zone and pay correct shipping fee
    Given I am on Shop Product Index Page
    When I input "6th Product for Checkout" to search field
    Then 1st product of products list should contain "6th Product for Checkout"
    And I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    When I fill "3" to product quantity field
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And I select country dropdown option included "Hong Kong" of country list dropdown
    And I select delivery dropdown option included "(DBW) - LocalDelivery" of delivery method dropdown
    And I select payment dropdown option included "Bank Transfer" of payment method dropdown
    And I wait for 5 seconds for loading
    And I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I fill name to name field
    And I fill email to email address field
    And I fill phone to contact number field
    And I click on same as checkbox
    And I select delivery address dropdown option included "Hong Kong" of 1st delivery address dropdown
    And I select delivery address dropdown option included "Central and Western" of 2nd delivery address dropdown
    And I select delivery address dropdown option included "The Peak" of 3rd delivery address dropdown
    And I fill address to delivery address field
    And I click on agree terms checkbox
    And I click on accept marketing checkbox
    And I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain "NT$35"
    Then total should contain "NT$177"
    Then discount applied should contain "12th Promotion"
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then customer name should contain name
    Then customer email should contain email
    Then customer phone should contain phone
    Then payment type should contain "Bank Transfer"
    Then delivery method should contain "(DBW) - LocalDelivery"
    Then recipient name should contain name
    Then recipient phone should contain phone
    Then delivery fee should contain "NT$35"
    Then total should contain "NT$177"
    And ---ROLL BACK---
    Given I am on Promotion Index Page
    When I input "12th Promotion" to search field
    Then 1st row of promotion list should contain "12th Promotion"
    Then I should see apply filter label
    Then I should see 1 row of promotion list
    Then 1st row of promotion list should contain "12th Promotion"
    And I click on 1st row of select checkbox list
    And I select unpublish of bulk actions dropdown
    Then I should see 1 unpublished item