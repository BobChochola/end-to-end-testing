@BaseCase @Admin @Storefront @Checkout @FreeShipping @mobile-freeShippingCheckoutReminder
@fixture-mobile-signup-p2 @fixture-shop @fixture-product @fixture-delivery @fixture-payment
Feature: Mobile member Checkout - Shopping Cart Promotion Reminder
  As a customer
  I can go checkout with message of limitation alert

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

    Given I am on Promotion Setting Page
    And I should see promotion reminder toggle
    And I check and click promotion reminder toggle off
    Then promotion reminder toggle should be checked
    When I click on update button
    Then I should see alert

    Given I am on Free Shipping Index Page
    When I click on add promotion button
    Then I should be redirected to Free Shipping Create Page
    And I fill '(dirty data) Enjoy free shipping with purchase over NT$20' to name field
    And I click on subtotal condition checkbox
    And I fill '20' to promotion condition field
    And I click on countinue to button
    And I click on 2nd countinue to button
    And I click on unlimited checkbox
    And I fill '3' to limited field
    And I click on 3rd countinue to button
    And I scroll down to preview button
    And I click on preview button
    Then coupon code should equal to 'N/A'
    Then promotion limitations start date should contain start date
    Then promotion limitations end date should contain 'Never expires'
    Then total usage limit should equal to '3 time(s)'
    Then target group should equal to 'All Customers'
    Then discount summary should equal to 'Enjoy free shipping with purchase over NT$20'
    When I click on confirm button
    Then I should be redirected to Free Shipping Index Page
    Then I should see alert
    Then 1st row of free shipping list should contain 'Enjoy free shipping with purchase over NT$20'

  Scenario: Checkout - Shopping Cart Promotion Reminder
    Given I am on Shop Product Index Page
    When I input '17th Product for Checkout' to search field
    Then 1st product of products list should contain "17th Product for Checkout"
    When I click on 1st product of products list
    Then I should be redirected to Shop Product Show Page
    And I click on add to cart button
    Then I should see cart panel
    When I click on checkout button
    Then I should be redirected to Shop Cart Page
    And unapplied promotion should contain 'Enjoy free shipping with purchase over NT$20'
    When I fill '2' to item quantity field
    And I should not see unapplied promotion
    When I click on login button
    Then I should be redirected to Shop Login Page
    And I fill test phone to email field
    And I fill password to password field
    And I click on submit button
    Then I should be redirected to Shop Cart Page
    When I select language dropdown option included 'English' of language dropdown
    And I wait for 3 seconds for loading
    Then language dropdown should contain 'English'
    And I select country dropdown option included "Taiwan" of country list dropdown
    And I wait for 5 seconds for loading
    And I select delivery dropdown option included 'Local Delivery' of delivery method dropdown
    And I wait for 5 seconds for loading
    And I select payment dropdown option included 'Custom' of payment method dropdown
    And I wait for 5 seconds for loading
    When I click on proceed to checkout button
    Then I should be redirected to Shop Checkout Page
    And I select delivery address dropdown option included "Taipei City" of 1st delivery address dropdown
    And I select delivery address dropdown option included "100 Zhongzheng District" of 2nd delivery address dropdown
    And I fill name to name field
    And I fill email to email address field
    And I click on same as checkbox
    And I fill address to delivery address field
    And I click on agree terms checkbox
    When I click on place order button
    Then I should be redirected to Shop Order Confirm Page
    When I click on summary collapse
    Then delivery fee should contain 'NT$0'
    Given I am on Orders Page
    When I click on 1st row of order links
    Then I should be redirected to Orders Show Page
    Then order date should contain order date
    Then delivery fee should contain "NT$0"

    And ---ROLL BACK---
    Given I am on Promotion Setting Page
    When I click on promotion reminder toggle
    Then promotion reminder toggle should not be checked
    When I click on update button
    Then I should see alert

    Given I am on Free Shipping Index Page
    And I input 'Enjoy free shipping with purchase over NT$20' to search field
    Then 1st row of free shipping list should contain 'Enjoy free shipping with purchase over NT$20'
    When I click on 1st row of select checkbox list
    And I select delete of bulk actions dropdown
    And I should see confirmation popover
    And I click on delete checkbox
    And I click on confirm delete button
    Then I should see alert
    Then 1st row of free shipping list should not contain 'Enjoy free shipping with purchase over NT$20'